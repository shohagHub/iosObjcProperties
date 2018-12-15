//
//  Properties.h
//  ObjcProperties
//
//  Created by Saleh Enam Shohag on 15/12/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Properties : NSObject
-(void)nonAtomicRetain;
@end

@interface XYZClass : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSString *name2;
@property (atomic, assign, readwrite, getter=getthisYear, setter=setThisYear:) NSInteger year;
@end


NS_ASSUME_NONNULL_END
