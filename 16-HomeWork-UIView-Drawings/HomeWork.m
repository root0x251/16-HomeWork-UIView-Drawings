//
//  HomeWork.m
//  16-HomeWork-UIView-Drawings
//
//  Created by Slava on 29.04.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "HomeWork.h"

@implementation HomeWork

- (void)drawRect:(CGRect)rect {
    CGRect rectTop = CGRectMake(CGRectGetMidX(rect) - 25, CGRectGetMinY(rect), 50, 50);   // создаем квадрат в нашм subview с такими координатами
    CGRect rectLeft = CGRectMake(CGRectGetMinX(rect), CGRectGetMidY(rect) - 25, 50, 50);
    CGRect rectRight = CGRectMake(CGRectGetMaxX(rect) - 50, CGRectGetMidY(rect) - 25, 50, 50);
    CGRect rectBottomLeft = CGRectMake(CGRectGetMinX(rect) + 25, CGRectGetMaxY(rect) - 50, 50, 50);
    CGRect rectBottomRight = CGRectMake(CGRectGetMaxX(rect) - 75, CGRectGetMaxY(rect)- 50, 50, 50);
    CGContextRef context = UIGraphicsGetCurrentContext();                                   // добовляем context
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);                  // выбираем цвет
    
    // добовляем квадрат
    CGContextAddRect(context, rectTop);     // размещаем квадрат
    CGContextAddRect(context, rectLeft);
    CGContextAddRect(context, rectRight);
    CGContextAddRect(context, rectBottomLeft);
    CGContextAddRect(context, rectBottomRight);
    CGContextStrokePath(context);           // делаем обводку линий квадрата
    
    // добовляем круг
    CGContextSetFillColorWithColor(context, [UIColor grayColor].CGColor);   // выбираем цвет
    CGContextAddEllipseInRect(context, rectTop);                            // помещаем круг в квадрат
    CGContextAddEllipseInRect(context, rectLeft);
    CGContextAddEllipseInRect(context, rectRight);
    CGContextAddEllipseInRect(context, rectBottomLeft);
    CGContextAddEllipseInRect(context, rectBottomRight);
    CGContextFillPath(context);                                             // делаем заливку


    // добавляем линии
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);             // цвет линии
    CGContextSetLineWidth(context, 2);                                                  // толщмна линии
    CGContextSetLineCap(context, kCGLineCapRound);                                      // сглаживание концов
    
    CGContextMoveToPoint(context, CGRectGetMidX(rectBottomLeft), CGRectGetMidY(rectBottomLeft));      // первая точка
    CGContextAddLineToPoint(context, CGRectGetMidX(rectTop), CGRectGetMidY(rectTop));   // вторая точка
    
    CGContextMoveToPoint(context, CGRectGetMidX(rectTop), CGRectGetMidY(rectTop));      // первая точка
    CGContextAddLineToPoint(context, CGRectGetMidX(rectBottomRight), CGRectGetMidY(rectBottomRight));   // вторая точка

    
    CGContextMoveToPoint(context, CGRectGetMidX(rectBottomRight), CGRectGetMidY(rectBottomRight));      // первая точка
    CGContextAddLineToPoint(context, CGRectGetMidX(rectLeft), CGRectGetMidY(rectLeft));   // вторая точка

    CGContextMoveToPoint(context, CGRectGetMidX(rectLeft), CGRectGetMidY(rectLeft));      // первая точка
    CGContextAddLineToPoint(context, CGRectGetMidX(rectRight), CGRectGetMidY(rectRight));   // вторая точка

    CGContextMoveToPoint(context, CGRectGetMidX(rectRight), CGRectGetMidY(rectRight));      // первая точка
    CGContextAddLineToPoint(context, CGRectGetMidX(rectBottomLeft), CGRectGetMidY(rectBottomLeft));   // вторая точка
    CGContextStrokePath(context);           // делаем обводку линий квадрата



    
//    CGContextMoveToPoint(context, CGRectGetMaxX(square3), CGRectGetMinY(square3));
//    CGContextAddLineToPoint(context, CGRectGetMaxX(square1), CGRectGetMinY(square1));
//    CGContextStrokePath(context);
}




@end
