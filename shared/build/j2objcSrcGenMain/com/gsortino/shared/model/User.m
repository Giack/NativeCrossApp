//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/gsortino/TestProject/NativeCrossApp/shared/src/main/java/com/gsortino/shared/model/User.java
//

#include "J2ObjC_source.h"
#include "com/gsortino/shared/model/User.h"

@implementation ComGsortinoSharedModelUser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGsortinoSharedModelUser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(login_);
  RELEASE_(avatar_url_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "login_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "avatar_url_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGsortinoSharedModelUser = { 2, "User", "com.gsortino.shared.model", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGsortinoSharedModelUser;
}

@end

void ComGsortinoSharedModelUser_init(ComGsortinoSharedModelUser *self) {
  NSObject_init(self);
}

ComGsortinoSharedModelUser *new_ComGsortinoSharedModelUser_init() {
  ComGsortinoSharedModelUser *self = [ComGsortinoSharedModelUser alloc];
  ComGsortinoSharedModelUser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGsortinoSharedModelUser)