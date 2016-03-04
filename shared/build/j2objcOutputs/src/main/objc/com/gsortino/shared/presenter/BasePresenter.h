//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/gsortino/TestProject/NativeCrossApp/shared/src/main/java/com/gsortino/shared/presenter/BasePresenter.java
//

#ifndef _ComGsortinoSharedPresenterBasePresenter_H_
#define _ComGsortinoSharedPresenterBasePresenter_H_

#include "J2ObjC_header.h"
#include "com/gsortino/shared/presenter/Presenter.h"

@class ComGsortinoSharedModelVolatileStorage;
@protocol ComGsortinoSharedNetworkNetworkInterface;
@protocol ComGsortinoSharedViewMvpView;

@interface ComGsortinoSharedPresenterBasePresenter : NSObject < ComGsortinoSharedPresenterPresenter >

#pragma mark Public

- (instancetype)init;

- (void)attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface:(id<ComGsortinoSharedNetworkNetworkInterface>)networkInterface;

- (void)attachViewWithId:(id<ComGsortinoSharedViewMvpView>)view;

- (void)detachViewWithId:(id<ComGsortinoSharedViewMvpView>)view;

- (id<ComGsortinoSharedNetworkNetworkInterface>)getNetworkInterface;

#pragma mark Protected

- (id)getView;

- (ComGsortinoSharedModelVolatileStorage *)getVolatileStorage;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGsortinoSharedPresenterBasePresenter)

FOUNDATION_EXPORT void ComGsortinoSharedPresenterBasePresenter_init(ComGsortinoSharedPresenterBasePresenter *self);

FOUNDATION_EXPORT ComGsortinoSharedPresenterBasePresenter *new_ComGsortinoSharedPresenterBasePresenter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGsortinoSharedPresenterBasePresenter)

#endif // _ComGsortinoSharedPresenterBasePresenter_H_