.class public Landroid/renderscript/ProgramRaster$Builder;
.super Ljava/lang/Object;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPR:Landroid/renderscript/ProgramRaster;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V
    .locals 2
    .parameter "rs"
    .parameter "in"
    .parameter "out"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    new-instance v0, Landroid/renderscript/ProgramRaster;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/renderscript/ProgramRaster;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramRaster$Builder;)Landroid/renderscript/ProgramRaster;
    .locals 5
    .parameter "rs"
    .parameter "b"

    .prologue
    const-class v1, Landroid/renderscript/ProgramRaster$Builder;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    invoke-virtual {v2}, Landroid/renderscript/ProgramRaster;->internalInit()V

    iget-object v0, p1, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    .local v0, pr:Landroid/renderscript/ProgramRaster;
    new-instance v2, Landroid/renderscript/ProgramRaster;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v3, v4}, Landroid/renderscript/ProgramRaster;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v2, p1, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .end local v0           #pr:Landroid/renderscript/ProgramRaster;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramRaster;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramRaster$Builder;)Landroid/renderscript/ProgramRaster;

    move-result-object v0

    return-object v0
.end method

.method public setLineSmoothEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    iput-boolean p1, v0, Landroid/renderscript/ProgramRaster;->mLineSmooth:Z

    return-void
.end method

.method public setPointSmoothEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    iput-boolean p1, v0, Landroid/renderscript/ProgramRaster;->mPointSmooth:Z

    return-void
.end method

.method public setPointSpriteEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPR:Landroid/renderscript/ProgramRaster;

    iput-boolean p1, v0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    return-void
.end method
