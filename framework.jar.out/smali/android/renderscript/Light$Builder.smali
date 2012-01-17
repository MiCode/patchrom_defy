.class public Landroid/renderscript/Light$Builder;
.super Ljava/lang/Object;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mIsLocal:Z

.field mIsMono:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Light$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-boolean v0, p0, Landroid/renderscript/Light$Builder;->mIsMono:Z

    iput-boolean v0, p0, Landroid/renderscript/Light$Builder;->mIsLocal:Z

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Light$Builder;)Landroid/renderscript/Light;
    .locals 3
    .parameter "rs"
    .parameter "b"

    .prologue
    const-class v1, Landroid/renderscript/Light$Builder;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nSamplerBegin()V

    iget-boolean v2, p1, Landroid/renderscript/Light$Builder;->mIsMono:Z

    invoke-virtual {p0, v2}, Landroid/renderscript/RenderScript;->nLightSetIsMono(Z)V

    iget-boolean v2, p1, Landroid/renderscript/Light$Builder;->mIsLocal:Z

    invoke-virtual {p0, v2}, Landroid/renderscript/RenderScript;->nLightSetIsLocal(Z)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nLightCreate()I

    move-result v0

    .local v0, id:I
    new-instance v2, Landroid/renderscript/Light;

    invoke-direct {v2, v0, p0}, Landroid/renderscript/Light;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .end local v0           #id:I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public create()Landroid/renderscript/Light;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Light$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Light$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/Light$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Light$Builder;)Landroid/renderscript/Light;

    move-result-object v0

    return-object v0
.end method

.method public lightSetIsLocal(Z)V
    .locals 0
    .parameter "isLocal"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/Light$Builder;->mIsLocal:Z

    return-void
.end method

.method public lightSetIsMono(Z)V
    .locals 0
    .parameter "isMono"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/Light$Builder;->mIsMono:Z

    return-void
.end method
