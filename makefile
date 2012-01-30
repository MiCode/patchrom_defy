#
# Makefile for i9100
#

# The out path for jars and apks from MIUI
# 	defalut value is false, to use the jars and apks under miui/
# 	could be set as true, to use the jars and apks under android build out.
local-use-android-out := true

# The original zip file, MUST be specified by each product
local-zip-file     := defy_2.3.4_cn.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := defy_2.3.4_cn_miui.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := BlurPhone MediaProvider OverlaySettingsProvider Setup TelephonyProvider

local-miui-modified-apps := Launcher2 Contacts

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     :=  ContactsProvider Mms ThemeManager  DownloadProvider \
      TelocationProvider Notes Music Torch DownloadProviderUi Updater

# All apps need to be removed from original ZIP file
local-remove-apps   := Alipay BeeNews BlurHome BlurSNMessagingEngine BlurEmail \
ContactsProvider2_0 BlurContacts BlurContactsSync BlurDialer ContactsData \
Conversations blur_email QuickContactWidget QuickSms QuickSearchBox PimBackup\
DianPing FriendFeed Firewall MapbarMap MSExchangeService \
MessagesWidget Messaging blur_yahoo blur_sohu blur_skyrock \
blur_sinamicroblog blur_sina_vip blur_sina blur_renren blur_qzone \
blur_qq_vip blur_qq blur_netease_yeah blur_netease_188 blur_netease_163 \
blur_netease_126 blur_kaixin001 blur_fiveone YoudaoDict Tudou Top100Music \
SHOP4APPS QQBrowser QQIM QQMicroBlog Quickoffice StraightFlush \
NewsWidget SinaWeatherWidget StickyNoteWidget Viva Protips BookmarksWidget

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp other/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
	@echo Add google apks
	cp other/apk/* $(ZIP_DIR)/system/app/
	@echo Replace build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

local-test:
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/defy_2.3.4_cn_miui.zip
	adb push $(OUT_ZIP) /sdcard/defy_2.3.4_cn_miui.zip
