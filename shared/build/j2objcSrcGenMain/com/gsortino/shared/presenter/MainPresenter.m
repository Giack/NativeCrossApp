//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/gsortino/TestProject/NativeCrossApp/shared/src/main/java/com/gsortino/shared/presenter/MainPresenter.java
//

#include "J2ObjC_source.h"
#include "com/gsortino/shared/network/NetworkCallback.h"
#include "com/gsortino/shared/network/NetworkInterface.h"
#include "com/gsortino/shared/presenter/BasePresenter.h"
#include "com/gsortino/shared/presenter/MainPresenter.h"
#include "com/gsortino/shared/view/MainMvpView.h"
#include "java/util/ArrayList.h"

@interface ComGsortinoSharedPresenterMainPresenter () {
 @public
  JavaUtilArrayList *mData_;
}

@end

J2OBJC_FIELD_SETTER(ComGsortinoSharedPresenterMainPresenter, mData_, JavaUtilArrayList *)

@interface ComGsortinoSharedPresenterMainPresenter_$1 : NSObject < ComGsortinoSharedNetworkNetworkCallback > {
 @public
  ComGsortinoSharedPresenterMainPresenter *this$0_;
}

- (void)onSuccessWithId:(JavaUtilArrayList *)data;

- (void)onErrorWithNSString:(NSString *)error;

- (instancetype)initWithComGsortinoSharedPresenterMainPresenter:(ComGsortinoSharedPresenterMainPresenter *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGsortinoSharedPresenterMainPresenter_$1)

J2OBJC_FIELD_SETTER(ComGsortinoSharedPresenterMainPresenter_$1, this$0_, ComGsortinoSharedPresenterMainPresenter *)

__attribute__((unused)) static void ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(ComGsortinoSharedPresenterMainPresenter_$1 *self, ComGsortinoSharedPresenterMainPresenter *outer$);

__attribute__((unused)) static ComGsortinoSharedPresenterMainPresenter_$1 *new_ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(ComGsortinoSharedPresenterMainPresenter *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGsortinoSharedPresenterMainPresenter_$1)

@implementation ComGsortinoSharedPresenterMainPresenter

- (void)attachViewWithId:(id<ComGsortinoSharedViewMainMvpView>)view {
  [super attachViewWithId:view];
  if (mData_ != nil) [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([self getView])) showListWithJavaUtilArrayList:mData_];
}

- (void)loadDataWithNSString:(NSString *)user
                withNSString:(NSString *)repository {
  [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([self getView])) showProgressIndicator];
  [((id<ComGsortinoSharedNetworkNetworkInterface>) nil_chk([self getNetworkInterface])) retriveStargazersWithNSString:user withNSString:repository withComGsortinoSharedNetworkNetworkCallback:[new_ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(self) autorelease]];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGsortinoSharedPresenterMainPresenter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(mData_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "attachViewWithId:", "attachView", "V", 0x1, NULL, NULL },
    { "loadDataWithNSString:withNSString:", "loadData", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mData_", NULL, 0x2, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Lcom/gsortino/shared/model/User;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.gsortino.shared.view.MainMvpView;"};
  static const J2ObjcClassInfo _ComGsortinoSharedPresenterMainPresenter = { 2, "MainPresenter", "com.gsortino.shared.presenter", NULL, 0x1, 3, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lcom/gsortino/shared/presenter/BasePresenter<Lcom/gsortino/shared/view/MainMvpView;>;" };
  return &_ComGsortinoSharedPresenterMainPresenter;
}

@end

void ComGsortinoSharedPresenterMainPresenter_init(ComGsortinoSharedPresenterMainPresenter *self) {
  ComGsortinoSharedPresenterBasePresenter_init(self);
}

ComGsortinoSharedPresenterMainPresenter *new_ComGsortinoSharedPresenterMainPresenter_init() {
  ComGsortinoSharedPresenterMainPresenter *self = [ComGsortinoSharedPresenterMainPresenter alloc];
  ComGsortinoSharedPresenterMainPresenter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGsortinoSharedPresenterMainPresenter)

@implementation ComGsortinoSharedPresenterMainPresenter_$1

- (void)onSuccessWithId:(JavaUtilArrayList *)data {
  JreStrongAssign(&this$0_->mData_, data);
  [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([this$0_ getView])) showListWithJavaUtilArrayList:data];
  [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([this$0_ getView])) hideProgressIndicator];
}

- (void)onErrorWithNSString:(NSString *)error {
  [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([this$0_ getView])) hideProgressIndicator];
  [((id<ComGsortinoSharedViewMainMvpView>) nil_chk([this$0_ getView])) showMessageWithNSString:error];
}

- (instancetype)initWithComGsortinoSharedPresenterMainPresenter:(ComGsortinoSharedPresenterMainPresenter *)outer$ {
  ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(self, outer$);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onSuccessWithId:", "onSuccess", "V", 0x1, NULL, NULL },
    { "onErrorWithNSString:", "onError", "V", 0x1, NULL, NULL },
    { "initWithComGsortinoSharedPresenterMainPresenter:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.gsortino.shared.presenter.MainPresenter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "ComGsortinoSharedPresenterMainPresenter", "loadDataWithNSString:withNSString:" };
  static const J2ObjcClassInfo _ComGsortinoSharedPresenterMainPresenter_$1 = { 2, "", "com.gsortino.shared.presenter", "MainPresenter", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lcom/gsortino/shared/network/NetworkCallback<Ljava/util/ArrayList<Lcom/gsortino/shared/model/User;>;>;" };
  return &_ComGsortinoSharedPresenterMainPresenter_$1;
}

@end

void ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(ComGsortinoSharedPresenterMainPresenter_$1 *self, ComGsortinoSharedPresenterMainPresenter *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

ComGsortinoSharedPresenterMainPresenter_$1 *new_ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(ComGsortinoSharedPresenterMainPresenter *outer$) {
  ComGsortinoSharedPresenterMainPresenter_$1 *self = [ComGsortinoSharedPresenterMainPresenter_$1 alloc];
  ComGsortinoSharedPresenterMainPresenter_$1_initWithComGsortinoSharedPresenterMainPresenter_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGsortinoSharedPresenterMainPresenter_$1)
