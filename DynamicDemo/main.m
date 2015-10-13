//
//  main.m
//  DynamicDemo
//
//  Created by Evan on 15/10/14.
//  Copyright © 2015年 KK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "BlackPrinter.h"
#import "ColorPrinter.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Person *person =[[Person alloc] init];
        
        ColorPrinter *colorPrint = [[ColorPrinter alloc] init];
        BlackPrinter *blackPrint = [[BlackPrinter alloc] init];
        int cmd;
        do{
            scanf("%d",&cmd);
            if(cmd == 1){
                [person doPrint:colorPrint];
            }else if(cmd == 2){
                [person doPrint:blackPrint];
            }
        }while (1);
        
        
        //多态的定义
        /*
         Printer *p1 = [[ColorPrinter alloc] init];
         Printer *p2 = [[BlackPrinter alloc] init];
         
         [person doPrint:p1];
         [person doPrint:p2];
         */
        
        //通过控制台输入的命令来控制使用哪个打印机
        
    }
    return 0;
}
