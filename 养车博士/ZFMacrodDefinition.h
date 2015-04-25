//
//  ZFMacrodDefinition.h
//  养车博士
//
//  Created by froda on 15/4/22.
//  Copyright (c) 2015年 froda. All rights reserved.
//

#ifndef _____ZFMacrodDefinition_h
#define _____ZFMacrodDefinition_h

#endif

// 自定义Log输出
#ifdef DEBUG
#define ZFLog(format, ...) do {                                             \
fprintf(stderr, "<%s : %d> %s\n",                                           \
[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
__LINE__, __func__);                                                        \
(NSLog)((format), ##__VA_ARGS__);                                           \
fprintf(stderr, "\n-------------------------------------华丽的分割线-----------------------------------\n");\
} while (0)
#else
#define ZFLog(...)
#endif
