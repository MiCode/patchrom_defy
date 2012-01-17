# makefile for i9100
# usage:
# 	1) make i9100 - to make all necessary JARs and APPs listed in APPS/JARS/MIUIAPPS,
# 	   and sign/push to phone (so keep the phone with usb connected)
# 	2) make zipfile - to create the full ZIP file for i9100 phone zip file
# 	3) make zip2sd  - to push the ZIP file to phone in recovery mode
# 	4) make zipone  - zipfile + zip2sd
# 	5) make apktool-if - install the framework for apktool
# 	6) make apkname.apk.sign - to generate a single apkname.apk and sign/push to phone
# 	7) make .build/xxxx.jar-phone  - to make out a single jar file and push to phone
#          note: for single 2,3, need to 'adb remount' first.
# 	8) make clean - clear everything for output of this makefile, 
# 			but left the build-out apk/jars from the android-make
# 	9) make reallyclean - clear everything of related.
#      10) make clean-appname / make appname (just as android-make xxx at android-top)
#
# maintain:
# 	1) For APK from miui, add it in MIUIAPPS
# 	2) If any APK from original is changed, add it at APPs
# 	3) Put apps need to be removed at RUNDAPKS

LIBRA_ROOT := $(ANDROID_BUILD_TOP)
SYSOUT_DIR := $(ANDROID_PRODUCT_OUT)/system
TOOLDIR    := $(LIBRA_ROOT)/porting/tools
APKTOOL    := $(TOOLDIR)/apktool
SIGN       := $(TOOLDIR)/sign.sh
ZIP_FILE   := defy_2.3.4_cn.zip
TMP_DIR    := .build
ZIP_DIR    := $(TMP_DIR)/ZIP
OUT_ZIP    := $(TMP_DIR)/defy_2.3.4_cn_miui.zip
ADDMIUI    := $(TOOLDIR)/add_miui_smail.sh
MAKE_ATTOP := make -C $(LIBRA_ROOT)

# All apps from zip and has smali files chanded(need to be builded by apktool)
APPS     := BlurPhone Launcher2 MediaProvider OverlaySettingsProvider Setup Contacts
JARS     := services android.policy framework
# All apks from MIUI execept MIUISystemUI and framework-res.apk
MIUIAPPS := ContactsProvider Mms TelephonyProvider ThemeManager  DownloadProvider
MIUIAPPS += TelocationProvider Notes Music Torch DownloadProviderUi Updater

RUNDAPKS    := Alipay BeeNews BlurHome BlurSNMessagingEngine BlurEmail \
BlurEmailEngine ContactsProvider2_0 BlurContacts BlurContactsSync BlurDialer ContactsData\
Conversations blur_email QuickContactWidget QuickSms\
DianPing FriendFeed Firewall MapbarMap MSExchangeService \
MessagesWidget Messaging blur_yahoo blur_sohu blur_skyrock \
blur_sinamicroblog blur_sina_vip blur_sina blur_renren blur_qzone \
blur_qq_vip blur_qq blur_netease_yeah blur_netease_188 blur_netease_163 \
blur_netease_126 blur_kaixin001 blur_fiveone YoudaoDict Tudou Top100Music \
SHOP4APPS QQBrowser QQIM QQMicroBlog Quickoffice StraightFlush\
NewsWidget SinaWeatherWidget StickyNoteWidget Viva Protips BookmarksWidget

BLDAPKS     := $(addprefix $(TMP_DIR)/,$(addsuffix .apk,$(APPS)))
BLDJARS     := $(addprefix $(TMP_DIR)/,$(addsuffix .jar,$(JARS)))
PHN_BLDJARS := $(addsuffix -phone,$(BLDJARS))
ZIP_BLDJARS := $(addsuffix -tozip,$(BLDJARS))
SIGNAPKS    := 
TOZIP_APKS  :=
CLEANJAR    :=
CLEANMIUIAPP:=

#
# Extract the jar file from ZIP file and replaced with smail from git
# $1: the jar name, such as services
# $2: the dir under build for apktool-decoded files, such as .build/services
define JAR_template
$(TMP_DIR)/$(1).jar-phone:$(TMP_DIR)/$(1).jar
	adb push $$< /system/framework/$(1).jar

$(TMP_DIR)/$(1).jar-tozip:$(TMP_DIR)/$(1).jar
	cp $$< $(ZIP_DIR)/system/framework/$(1).jar

$(TMP_DIR)/$(1).jar: $(2) $(2)_miui
	@echo build $$@...
	@echo --------------------------------------------
	cp -r $(1).jar.out/smali $(2)
	$(ADDMIUI) $(2)_miui $(2)
	$(APKTOOL) b $(2) $$@

$(2): $(ZIP_FILE)
	@echo "unzip and decode $(1) from $(ZIP_FILE)"
	@echo --------------------------------------------
	unzip $(ZIP_FILE) system/framework/$(1).jar -d $(TMP_DIR)
	$(APKTOOL) d -f $(TMP_DIR)/system/framework/$(1).jar $(2)

$(2)_miui: $(SYSOUT_DIR)/framework/$(1).jar
	$(APKTOOL) d -f $$< $$@

$(SYSOUT_DIR)/framework/$(1).jar:
	$(MAKE_ATTOP) $(1)

CLEANJAR += clean-$(1)
clean-$(1):
	$(MAKE_ATTOP) clean-$(1)
endef

#
# To apktool build one apk from the decoded dirctory under .build
# $1: the apk name, such as LogsProvider
# $2: the dir name, might be different from apk name, such as framework-res.out
# $3: action, e.g: need firstly to be decoded from miui-apks or zip files
define APP_template
$(TMP_DIR)/$(1).apk: $(3)_$(1) $(TMP_DIR)
	@echo build $$@...
	@echo --------------------------------------------
	cp -r $(2) $(TMP_DIR)
	$(APKTOOL) b $(TMP_DIR)/$(2) $$@

nop_$(1):
	@echo nothing to do for $(1)

decode_miui_$(1): $(SYSOUT_DIR)/app/$(1).apk
	$(APKTOOL) d -f $(SYSOUT_DIR)/app/$(1).apk $(TMP_DIR)/$(2)

# todo, now this target is only for framework-res
decode_zip_$(1):
	unzip $(ZIP_FILE) system/framework/$(1).apk -d $(TMP_DIR)
	$(APKTOOL) d -f $(TMP_DIR)/system/framework/$(1).apk $(TMP_DIR)/$(2)

endef

#
# Used to sign one single file, e.g: make .build/LogsProvider.apk.sign
# for zipfile target, just to copy the unsigned file to correct ZIP-directory.
# also create a seperate target for command line, such as : make LogsProvider.apk.sign
# $1: the apk file need to be signed
# $2: the path/filename in the phone
define SIGN_template
SIGNAPKS += $(1).sign
$(notdir $(1)).sign $(1).sign: $(1)
	@echo sign apk $(1) and push to phone as $(2)...
	@echo --------------------------------------------
	java -jar $(TOOLDIR)/signapk.jar $(TOOLDIR)/platform.x509.pem $(TOOLDIR)/platform.pk8 $(1) $(1).signed
	adb push $(1).signed $(2)

TOZIP_APKS += $(1).tozip
$(1).tozip : $(1)
	@echo cp apks-unsinged to zip dirs
	cp $(1) $(ZIP_DIR)$(2)
endef

#
# Used to build and clean the miui apk, e.g: make clean-Launcher2
# $1: the apk name
define BUILD_CLEAN_APP_template
$(SYSOUT_DIR)/app/$(1).apk:
	$(MAKE_ATTOP) $(1)

CLEANMIUIAPP += clean-$(1)
clean-$(1):
	$(MAKE_ATTOP) $$@
endef

#
# Targets expansion start here
$(foreach jar, $(JARS), \
	$(eval $(call JAR_template,$(jar),$(TMP_DIR)/$(jar))))

$(eval $(call APP_template,framework-res,framework-res.out,decode_zip))
$(eval $(call SIGN_template,$(TMP_DIR)/framework-res.apk,/system/framework/framework-res.apk))

$(foreach app, $(APPS), \
	$(eval $(call APP_template,$(app),$(app),nop)))
$(foreach app, $(APPS), \
	$(eval $(call SIGN_template,$(TMP_DIR)/$(app).apk,/system/app/$(app).apk)))
$(foreach app, $(MIUIAPPS), \
	$(eval $(call SIGN_template,$(SYSOUT_DIR)/app/$(app).apk,/system/app/$(app).apk)))
$(foreach app, $(MIUIAPPS) MIUISystemUI, $(eval $(call BUILD_CLEAN_APP_template,$(app))))

$(eval $(call SIGN_template,$(SYSOUT_DIR)/framework/framework-miui-res.apk,/system/framework/framework-miui-res.apk))

$(eval $(call APP_template,MIUISystemUI,SystemUI,decode_miui))
$(eval $(call SIGN_template,$(TMP_DIR)/MIUISystemUI.apk,/system/app/SystemUI.apk))

# Target expansion end here

sign: $(SIGNAPKS)
	@echo Sign competed!

i9100: prepare $(PHN_BLDJARS) $(BLDAPKS) sign
	@echo "reboot phone to recovery mode"
	adb reboot recovery
	@echo "make miui for 9100 completed"

$(ZIP_DIR): $(TMP_DIR) $(ZIP_FILE)
	unzip $(ZIP_FILE) -d $@

zip_misc:
	@echo Add other tools: invoke-as, busybox
	cp $(SYSOUT_DIR)/xbin/invoke-as $(ZIP_DIR)/system/xbin/
	cp other/busybox $(ZIP_DIR)/system/xbin/
	cp other/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
	@echo Add google apks
	cp other/apk/* $(ZIP_DIR)/system/app/
	@echo Replace build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	@echo Add Launcher gadget files
	cp -r $(SYSOUT_DIR)/media/gadget $(ZIP_DIR)/system/media/
	@echo Add default theme
	cp -r $(SYSOUT_DIR)/media/theme  $(ZIP_DIR)/system/media/
	@echo Add wallpapers
	cp -r $(SYSOUT_DIR)/media/wallpaper $(ZIP_DIR)/system/media/
	@echo Add lockscreen wallpapers
	cp -r $(SYSOUT_DIR)/media/lockscreen $(ZIP_DIR)/system/media/
	@echo To remove all unnecessary apks:
	rm -f $(addprefix $(ZIP_DIR)/system/app/, $(addsuffix .apk, $(RUNDAPKS)))

# use zipfile instead of $(OUT_ZIP) to let zip2sd could be reached if $(OUT_ZIP) exists
zipfile: $(ZIP_DIR) $(ZIP_BLDJARS) $(TOZIP_APKS) zip_misc
	$(SIGN) sign.zip $(ZIP_DIR)
	cd $(ZIP_DIR); zip -r ../../$(OUT_ZIP) ./
	@echo The output zip file is: $(OUT_ZIP)

zip2sd: $(OUT_ZIP)
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell rm -f /sdcard/defy_2.3.4_cn_miui.zip
	adb push $(OUT_ZIP) /sdcard/defy_2.3.4_cn_miui.zip

zipone: zipfile zip2sd

prepare:
	adb remount
	adb shell stop
	@echo --------------------------------------------
	@echo To Sign all apks in the phone
	@echo --------------------------------------------
	$(SIGN) sign.phone
	@mkdir -p $(TMP_DIR)
	@echo --------------------------------------------
	@echo Build all necessary Jars and APKS
	@echo --------------------------------------------

# install framework for apktool
apktool-if: $(SYSOUT_DIR)/framework/framework.jar $(TMP_DIR)/framework-res.apk
	@echo install framework resources...
	$(APKTOOL) if $(TMP_DIR)/framework-res.apk
	$(APKTOOL) if $(SYSOUT_DIR)/framework/framework-miui-res.apk
	unzip $(ZIP_FILE) system/framework/twframework-res.apk -d $(TMP_DIR)
	$(APKTOOL) if $(TMP_DIR)/system/framework/twframework-res.apk

$(TMP_DIR):
	@mkdir -p $(TMP_DIR)

clean:
	rm -rf $(TMP_DIR)

reallyclean: clean $(CLEANJAR) $(CLEANMIUIAPP)
	@echo "ALl CLEANED!"

verify-env:
	echo $(LIBRA_ROOT)
	echo $(SYSOUT_DIR)
	echo $(CLEANJAR)
	echo $(CLEANMIUIAPP)
