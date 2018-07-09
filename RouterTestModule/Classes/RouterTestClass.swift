//
//  RouterTestClass.swift
//  Pods-RouterTestModule_Example
//
//  Created by 小星星 on 2018/7/9.
//

import UIKit

import NicooSwiftRouter
// 这里是要通过路由从其他组件拿数据的调用
open class RouterTestClass: NSObject {
    
    class func shareToplatform(_ url: URL?) -> Any? {
        guard let shareUrl = url else {
            return ""
        }
        return NicooRouter.shareInstance.performAction(url: shareUrl , completion: nil)
    }
    open class func getMessageFormOtherModule(_ index: Int) -> Any? {
        if index == 1 {
            let str = "RightMuneTable://RouterApi/getRouterApiData"
            let utf8String = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let url = URL(string: utf8String)!
            let value =  shareToplatform(url)
            return value as! String
        }
        if  index == 2 {
            let str = "RightMuneTable://RouterApi/retureStingArray"
            let utf8String = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let url = URL(string: utf8String)!
            let value =  shareToplatform(url)
            return value as! [String]
        }
        return "瓜嘻嘻的"
    }
    
    
}


