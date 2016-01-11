//
//  ViewController.swift
//  HJHeartSwift
//
//  Created by jixuhui on 16/1/8.
//  Copyright © 2016年 Hubbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let anotherVC = SNShareAndThreeDTouchViewController()
//        print(anotherVC.threeDTouchAction())
        
        var outerValueA = OuterValueType()
        let outerValueB = outerValueA
        
        outerValueA.changeMe("outerValueA changed")
        outerValueB.printMe("outerValueB")
        
        var outerReferenceA = OuterReferenceType()
        let outerReferenceB = outerReferenceA
        
        outerReferenceA.changeMe("outerReferenceA changed")
        outerReferenceB.printMe("outerReferenceB")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

