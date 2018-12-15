//
//  Properties.m
//  ObjcProperties
//
//  Created by Saleh Enam Shohag on 15/12/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

#import "Properties.h"

@implementation Properties


//Available attribute of properties

//1. atomic //default
//2. nonatomic
//3. strong=retain //default not for primtive types
//4. weak = unsfe_unretained
//5. retain
//6. assing //default for primtive types
//7. unsafr_unretained
//8. copy
//9. readonly
//10. readwrite //default




//default for object properties Atomic, srong/retain, assign, readwrite
//have to use strong/retaint or assing or copy can not use the combination they are mutually exclusive(can not occur at the same time)
//

-(void)nonAtomicRetain{
    
    //Nonatomic is not thread safe
    XYZClass *objc = [[XYZClass alloc]init];
    NSString *name = [objc name];
    NSMutableString *nameString = [NSMutableString stringWithString:@"Liza"];
    
    [objc setName:nameString];
    [nameString appendString:@"pizza"];
    NSLog(@"%@ %@", name, [objc name]); //change in nameString will reflect if use retain/strong
    
    NSMutableString *nameString2 = [NSMutableString stringWithString:@"Shohag"];
    [objc setName2:nameString2];
    [nameString2 appendString:@"Enam"];
    NSLog(@"%@", [objc name2]);//copy is used so shohag will used
                              //It contains it's own copy
    //setter getter
    [objc setThisYear:10];
    [objc getthisYear];
    
    
}

@end




@implementation XYZClass



//@synthesize name;
-(instancetype)init{
    self = [super init];
    if (self){
//        self.name = @"hello";
    }
    return self;
}


@end
