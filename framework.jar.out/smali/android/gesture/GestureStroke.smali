.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 5
    .parameter "bbx"
    .parameter "len"
    .parameter "pts"
    .parameter "times"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, count:I
    mul-int/lit8 v10, v3, 0x2

    new-array v9, v10, [F

    .local v9, tmpPoints:[F
    new-array v8, v3, [J

    .local v8, times:[J
    const/4 v2, 0x0

    .local v2, bx:Landroid/graphics/RectF;
    const/4 v6, 0x0

    .local v6, len:F
    const/4 v5, 0x0

    .local v5, index:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    .local v7, p:Landroid/gesture/GesturePoint;
    mul-int/lit8 v10, v4, 0x2

    iget v11, v7, Landroid/gesture/GesturePoint;->x:F

    aput v11, v9, v10

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    iget v11, v7, Landroid/gesture/GesturePoint;->y:F

    aput v11, v9, v10

    iget-wide v10, v7, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v10, v8, v5

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    .end local v2           #bx:Landroid/graphics/RectF;
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .restart local v2       #bx:Landroid/graphics/RectF;
    iget v10, v7, Landroid/gesture/GesturePoint;->y:F

    iput v10, v2, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iput v10, v2, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iput v10, v2, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/gesture/GesturePoint;->y:F

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    float-to-double v10, v6

    iget v12, v7, Landroid/gesture/GesturePoint;->x:F

    const/4 v13, 0x1

    sub-int v13, v4, v13

    mul-int/lit8 v13, v13, 0x2

    aget v13, v9, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v7, Landroid/gesture/GesturePoint;->y:F

    const/4 v15, 0x1

    sub-int v15, v4, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v15, v9, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v6, v10

    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iget v11, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v2, v10, v11}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_1

    .end local v7           #p:Landroid/gesture/GesturePoint;
    :cond_1
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/gesture/GestureStroke;->timestamps:[J

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/gesture/GestureStroke;->points:[F

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/gesture/GestureStroke;

    invoke-direct {v3, v2}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object v3
.end method

.method private makePath()V
    .locals 14

    .prologue
    const/high16 v13, 0x4040

    const/high16 v12, 0x4000

    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    .local v4, localPoints:[F
    array-length v0, v4

    .local v0, count:I
    const/4 v7, 0x0

    .local v7, path:Landroid/graphics/Path;
    const/4 v5, 0x0

    .local v5, mX:F
    const/4 v6, 0x0

    .local v6, mY:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    aget v8, v4, v3

    .local v8, x:F
    add-int/lit8 v10, v3, 0x1

    aget v9, v4, v10

    .local v9, y:F
    if-nez v7, :cond_1

    new-instance v7, Landroid/graphics/Path;

    .end local v7           #path:Landroid/graphics/Path;
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .restart local v7       #path:Landroid/graphics/Path;
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v8

    move v6, v9

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    sub-float v10, v8, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, dx:F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, dy:F
    cmpl-float v10, v1, v13

    if-gez v10, :cond_2

    cmpl-float v10, v2, v13

    if-ltz v10, :cond_0

    :cond_2
    add-float v10, v8, v5

    div-float/2addr v10, v12

    add-float v11, v9, v6

    div-float/2addr v11, v12

    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v5, v8

    move v6, v9

    goto :goto_1

    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_3
    iput-object v7, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    .local v2, pts:[F
    iget-object v3, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .local v3, times:[J
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v0, v4

    .local v0, count:I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    div-int/lit8 v4, v1, 0x2

    aget-wide v4, v3, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 22
    .parameter "width"
    .parameter "height"
    .parameter "numSample"

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v12

    .local v12, pts:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    move-object v13, v0

    .local v13, rect:Landroid/graphics/RectF;
    move-object v0, v13

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object v0, v13

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v15, p1, v19

    .local v15, sx:F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v16, p2, v19

    .local v16, sy:F
    cmpl-float v19, v15, v16

    if-lez v19, :cond_1

    move/from16 v14, v16

    .local v14, scale:F
    :goto_0
    invoke-static {v12, v14, v14}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    const/4 v9, 0x0

    .local v9, mX:F
    const/4 v10, 0x0

    .local v10, mY:F
    const/4 v11, 0x0

    .local v11, path:Landroid/graphics/Path;
    array-length v5, v12

    .local v5, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_4

    aget v17, v12, v8

    .local v17, x:F
    add-int/lit8 v19, v8, 0x1

    aget v18, v12, v19

    .local v18, y:F
    if-nez v11, :cond_2

    new-instance v11, Landroid/graphics/Path;

    .end local v11           #path:Landroid/graphics/Path;
    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .restart local v11       #path:Landroid/graphics/Path;
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v9, v17

    move/from16 v10, v18

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #mX:F
    .end local v10           #mY:F
    .end local v11           #path:Landroid/graphics/Path;
    .end local v14           #scale:F
    .end local v17           #x:F
    .end local v18           #y:F
    :cond_1
    move v14, v15

    goto :goto_0

    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v9       #mX:F
    .restart local v10       #mY:F
    .restart local v11       #path:Landroid/graphics/Path;
    .restart local v14       #scale:F
    .restart local v17       #x:F
    .restart local v18       #y:F
    :cond_2
    sub-float v19, v17, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .local v6, dx:F
    sub-float v19, v18, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, dy:F
    const/high16 v19, 0x4040

    cmpl-float v19, v6, v19

    if-gez v19, :cond_3

    const/high16 v19, 0x4040

    cmpl-float v19, v7, v19

    if-ltz v19, :cond_0

    :cond_3
    add-float v19, v17, v9

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v20, v18, v10

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object v0, v11

    move v1, v9

    move v2, v10

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    move/from16 v9, v17

    move/from16 v10, v18

    goto :goto_2

    .end local v6           #dx:F
    .end local v7           #dy:F
    .end local v17           #x:F
    .end local v18           #y:F
    :cond_4
    return-object v11
.end method
