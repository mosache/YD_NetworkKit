//
//  ServiceApi.swift
//  YD_NetworkKit
//
//  Created by 傅强 on 2018/6/14.
//

import Foundation
import Moya
import Alamofire

public struct YD_ServiceApi<T : Requestable>{

    var request : YDRequest<T>
    
    public init(request : YDRequest<T>){
        self.request = request
    }
}

public struct YDRequest<T:Requestable>{
    var para : Dictionary<String,String>
    var path : String
    var method : HTTPMethod
    
    public init(para:Dictionary<String,String> , path : T ,  method : HTTPMethod = .get){
        self.para = para
        self.path = path.getValue()
        self.method = method
    }
}

public extension YD_ServiceApi{
    public enum ServiceApi {
        case login(username:String,password:String)
    }
    
}

 extension YD_ServiceApi : TargetType {
    public var baseURL: URL {
        return URL(string: "http://beta.duty.mgsafe.cn")!
    }
    
    public var path: String {
        return self.request.path
    }
    
    public var method: Moya.Method {
        return self.request.method
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var task: Moya.Task {
        return .requestParameters(parameters: self.request.para, encoding: URLEncoding.default)
    }
    
    public var headers: [String : String]? {
        return nil
    }
}

public protocol Requestable {
     func getValue() -> String
}






