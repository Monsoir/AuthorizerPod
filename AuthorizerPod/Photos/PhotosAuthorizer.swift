//
//  PhotosAuthorizer.swift
//  Pota
//
//  Created by Mon on 25/01/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit
import Photos

class PhotosAuthorizer: NSObject {
    
    
    /// 检测 App 是否已经获取到相册的权限
    ///
    /// - Returns: true 若 App 已经获取到权限，否则 false
    class func authorized() -> Bool {
        return PHPhotoLibrary.authorizationStatus() == .authorized
    }
    
    
    /// 向用户请求获取相册权限
    ///
    /// - Parameters:
    ///   - success: 相册权限获取成功的回调
    ///   - failure: 相册权限获取失败的回调
    class func requestAuthorization(success: @escaping (_ status: PHAuthorizationStatus) -> Void, failure: @escaping (_ status: PHAuthorizationStatus) -> Void) {
        PHPhotoLibrary.requestAuthorization { (authorizedStatus) in
            switch authorizedStatus {
            case .authorized:
                success(authorizedStatus)
            default:
                failure(authorizedStatus)
            }
        }
    }
}
