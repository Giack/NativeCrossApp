//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/gsortino/TestProject/NativeCrossApp/shared/src/main/java/com/gsortino/shared/presenter/BasePresenter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/gsortino/shared/model/VolatileStorage.h"
#include "com/gsortino/shared/network/NetworkInterface.h"
#include "com/gsortino/shared/presenter/BasePresenter.h"
#include "com/gsortino/shared/view/MvpView.h"

@interface ComGsortinoSharedPresenterBasePresenter () {
 @public
  id<ComGsortinoSharedViewMvpView> mMvpView_;
  id<ComGsortinoSharedNetworkNetworkInterface> mNetworkInterface_;
}

@end

J2OBJC_FIELD_SETTER(ComGsortinoSharedPresenterBasePresenter, mMvpView_, id)
J2OBJC_FIELD_SETTER(ComGsortinoSharedPresenterBasePresenter, mNetworkInterface_, id<ComGsortinoSharedNetworkNetworkInterface>)

@implementation ComGsortinoSharedPresenterBasePresenter

- (void)attachViewWithId:(id<ComGsortinoSharedViewMvpView>)view {
  JreStrongAssign(&mMvpView_, view);
}

- (void)detachViewWithId:(id<ComGsortinoSharedViewMvpView>)view {
  JreStrongAssign(&mMvpView_, nil);
}

- (id)getView {
  return mMvpView_;
}

- (void)attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface:(id<ComGsortinoSharedNetworkNetworkInterface>)networkInterface {
  JreStrongAssign(&mNetworkInterface_, networkInterface);
}

- (id<ComGsortinoSharedNetworkNetworkInterface>)getNetworkInterface {
  return mNetworkInterface_;
}

- (ComGsortinoSharedModelVolatileStorage *)getVolatileStorage {
  return nil;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGsortinoSharedPresenterBasePresenter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(mMvpView_);
  RELEASE_(mNetworkInterface_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "attachViewWithId:", "attachView", "V", 0x1, NULL, "(TT;)V" },
    { "detachViewWithId:", "detachView", "V", 0x1, NULL, "(TT;)V" },
    { "getView", NULL, "TT;", 0x4, NULL, "()TT;" },
    { "attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface:", "attachNetworkInterface", "V", 0x1, NULL, NULL },
    { "getNetworkInterface", NULL, "Lcom.gsortino.shared.network.NetworkInterface;", 0x1, NULL, NULL },
    { "getVolatileStorage", NULL, "Lcom.gsortino.shared.model.VolatileStorage;", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mMvpView_", NULL, 0x2, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "mNetworkInterface_", NULL, 0x2, "Lcom.gsortino.shared.network.NetworkInterface;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGsortinoSharedPresenterBasePresenter = { 2, "BasePresenter", "com.gsortino.shared.presenter", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T::Lcom/gsortino/shared/view/MvpView;>Ljava/lang/Object;Lcom/gsortino/shared/presenter/Presenter<TT;>;" };
  return &_ComGsortinoSharedPresenterBasePresenter;
}

@end

void ComGsortinoSharedPresenterBasePresenter_init(ComGsortinoSharedPresenterBasePresenter *self) {
  NSObject_init(self);
}

ComGsortinoSharedPresenterBasePresenter *new_ComGsortinoSharedPresenterBasePresenter_init() {
  ComGsortinoSharedPresenterBasePresenter *self = [ComGsortinoSharedPresenterBasePresenter alloc];
  ComGsortinoSharedPresenterBasePresenter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGsortinoSharedPresenterBasePresenter)