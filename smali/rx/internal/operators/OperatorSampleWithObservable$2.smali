.class Lrx/internal/operators/OperatorSampleWithObservable$2;
.super Lrx/Subscriber;
.source "OperatorSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSampleWithObservable;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSampleWithObservable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->this$0:Lrx/internal/operators/OperatorSampleWithObservable;

    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 87
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithObservable$2;->unsubscribe()V

    .line 88
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithObservable$2;->unsubscribe()V

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
