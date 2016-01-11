//
//  Demo.swift
//  HJSteed
//
//  Created by jixuhui on 16/1/7.
//  Copyright © 2016年 Hubbert. All rights reserved.
//

import Foundation
import UIKit

class ArticleViewController: UIViewController {
    var abstract:AnyObject?
}

/**
 *  @author Hubbert, 16-01-07 11:01:51
 *
 *  @brief 为什么Prefix为SN而不再是Article？因为并不是所有的需要分享功能都是ArticleViewController类
 *
 *  @since
 */
protocol SNShare {
    func share(title:String, message msg:String)->String
    var shareParam:String {get}
}

protocol SNThreeDTouchAction {
    var threeDTouchActionParam:String {get}
}

extension SNShare {
    func share(title:String, message msg:String)->String {
        return "share title is \(title) and message is \(msg)"
    }
    var shareParam:String {
        return "param"
    }
}

extension SNThreeDTouchAction {
    func threeDTouchAction()->String? {
        return nil
    }
    var threeDTouchActionParam:String {
        return "param"
    }
}

class SNShareAndThreeDTouchViewController: ArticleViewController,SNShare,SNThreeDTouchAction {
    func threeDTouchAction() -> String? {
        return "action success!"
    }
}

