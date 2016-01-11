//
//  VOPDemo.swift
//  HJSteed
//
//  Created by jixuhui on 16/1/7.
//  Copyright © 2016年 Hubbert. All rights reserved.
//

import Foundation

protocol Inner {
    var value:String {get set}
}

struct InnerValueType:Inner {
    var value = "InnerValueType"
}

class InnerReferenceType:Inner {
    var value = "InnerReferenceType"
}

protocol OuterPrintMe {
    func printMe(name:String)
}

protocol OuterChangeMe {
    mutating func changeMe(text:String)
}

protocol Outer: OuterPrintMe,OuterChangeMe {
    var value:String {get set}
    var innerValue:Inner {get set}
    var innerReference:Inner {get set}
    var computerValue:String {get}
}

extension Outer {
    
//    var value:String {
//        return ""
//    }
//
//    var innerValue:Inner {
//        return InnerValueType()
//    }
//    
//    var innerReference:Inner {
//        return InnerReferenceType()
//    }
    
    var computerValue:String {
        return "yes"
    }
    
    func printMe(name:String) {
        print("\(name).value = \(self.value)\n\(name).innerValue.value = \(self.innerValue.value)\n\(name).innerReference.value = \(self.innerReference.value)")
    }
    
    mutating func changeMe(text:String) {
        self.value = text
        self.innerValue.value = text
        self.innerReference.value = text
    }
}

class OuterReferenceType:Outer {
    var value = "OuterReferenceType"
    var innerValue:Inner = InnerValueType()
    var innerReference:Inner = InnerReferenceType()
}

struct OuterValueType:Outer {
    var value = "OuterValueType"
    var innerValue:Inner = InnerValueType()
    var innerReference:Inner = InnerReferenceType()
}
