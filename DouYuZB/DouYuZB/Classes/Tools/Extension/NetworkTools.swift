//
//  NetworkTools.swift
//  Alamofire的测试
//
//  Created by zuoya on 2017/10/21.
//  Copyright © 2017年 zuoya. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case GET
    case POST
}

class NetworkTools {
    
    class func requestData(type: MethodType, URLString : String, parameters : [String : NSString]? = nil, finishedCallback : @escaping (_ result :AnyObject) -> ()) {
        //1.获取类型
        let method = type == .GET ? HTTPMethod.get : HTTPMethod.post
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            
            finishedCallback(result as AnyObject)
        }
    }
}
