//
//  KVCTest.m
//  AlertAndSheet
//
//  Created by Bytedance on 2020/7/4.
//  Copyright © 2020 Bytedance. All rights reserved.
//

#import "KVCTest.h"

@interface KVCTest()

@property(nonatomic, strong)NSString *name;
@property(nonatomic, assign)NSInteger age;
@property(nonatomic, strong)NSString *address;
@property(nonatomic, strong)NSDictionary *name_address_dic;

@end

@implementation KVCTest

+ (id)shareInstance
{
    static KVCTest *singleton;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        singleton = [[KVCTest alloc] init];
    });
    return singleton;
}

- (id)init
{
    return [self initWithName:@"lujiayuan" age:25 address:@"Beijing Haidian"];
}

- (id)initWithName:(NSString *)name age:(NSInteger)age address:(NSString *)address
{
    if(self = [super init]) {
        _name = name;
        _age = age;
        _address = address;
        NSDictionary *dic = @{name:address};
        _name_address_dic = dic;
    }
    return self;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"{ name:%@, age:%ld, address:%@, N_A:%@ }", self.name, self.age, self.address, self.name_address_dic];
    return desc;
}


@end
