//
//  Authorizable.swift
//  AuthorizerPod
//
//  Created by Mon on 19/05/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import Foundation

protocol Authorizable: class {
    
    /// 检测是否已经获取到的权限
    ///
    /// - Returns: true 若已经获取到权限，否则 false
    static func authorized() -> Bool
    
    associatedtype AuthorizationType
    
    /// 请求获取响应权限
    ///
    /// - Parameters:
    ///   - success: 权限获取成功的回调
    ///   - failure: 权限获取失败的回调
    static func requestAuthorization(success: @escaping (_ status: AuthorizationType) -> Void, failure: @escaping (_ status: AuthorizationType) -> Void)
}
