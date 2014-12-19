//
//  main.m
//  My_Learning_Project
//
//  Created by ASatish Kumar on 6/12/14.
//  Copyright (c) 2014 i3Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

double calculateTax(double, double);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Test 1
        
        int num1 = 5;
        int num2 = 3;
        int num3 = num1 + num2;
        NSLog(@"Final number is %d", num3);
        
        // Test 2
        
        double numD1 = 22;
        double numD2 = 7;
        double numD3 = numD1/numD2;
        NSLog(@"Pi value is %f", numD3);
        
        // Primary values for items Eg. iPads
        
        int no_of_ipad = 5;
        double price_of_ipad = 899;
        double gst = 0.07;
        
        // Print functions
        
        NSLog(@"GST per iPad is %.2f", price_of_ipad * gst);
        NSLog(@"Price of iPad after gst is %.2f", (price_of_ipad*gst)+price_of_ipad);
        NSLog(@"Total price for %d iPads is %.2f", no_of_ipad, ((price_of_ipad*gst)+price_of_ipad) * no_of_ipad);
        
        // Decision maker with logical conditions
        
        if ((((price_of_ipad*gst)+price_of_ipad) * no_of_ipad) > 5000) {
            NSLog(@"Too Expensive!");
        } else {
            NSLog(@"Buy NOW!");
        }
        
        // Calculate tax
        
        // Tax variable
        double income = 5000;
        double taxRate = .20;
        //double result = calculateTax(income, taxRate);
        NSLog(@"Please pay %g for your taxes for your income for %g", (calculateTax(income,taxRate)),income);
        
    }
    return 0;
}

double calculateTax(double income, double taxRate)
{
    double result = income * taxRate;
    return result;
}
