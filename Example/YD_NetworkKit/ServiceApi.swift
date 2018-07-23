//
//  ServiceApi.swift
//  YD_NetworkKit_Example
//
//  Created by 傅强 on 2018/6/15.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import YD_NetworkKit
import Moya
enum ServiceApi : String {
    case login = "/Api/Duty/Login"
}

extension ServiceApi : Requestable {
    func getValue() -> String {
        return self.rawValue
    }
    
    func getBaseURL() -> String {
        return "http://beta.duty.mgsafe.cn"
    }
}
