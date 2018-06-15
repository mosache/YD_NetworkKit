//
//  ViewController.swift
//  YD_NetworkKit
//
//  Created by 330256579@qq.com on 06/14/2018.
//  Copyright (c) 2018 330256579@qq.com. All rights reserved.
//

import UIKit
import YD_NetworkKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let target = YD_ServiceApi(request:YDRequest<ServiceApi>(para: ["username":"901013710","password":"123456"], path: .login))
        HttpUtils<YD_ServiceApi>().successHandler { (result) in
            for (key, value) in result as! Dictionary<String,Any> {
                print("\(key) - \(value)")
            }
            }.request(target: target)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

