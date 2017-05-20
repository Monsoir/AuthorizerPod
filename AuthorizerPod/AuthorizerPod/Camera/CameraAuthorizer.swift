//
//  CameraAuthorizer.swift
//  AuthorizerPod
//
//  Created by Mon on 19/05/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit
import AVFoundation

// NSCameraUsageDescription

class CameraAuthorizer: NSObject {
    static func authorized() -> Bool {
        return AVCaptureDevice.authorizationStatus(forMediaType: AVMediaTypeVideo) == .authorized
    }
    
    typealias AuthorizationType = AVAuthorizationStatus
    static func requestAuthorization(success: @escaping (AVAuthorizationStatus) -> Void, failure: @escaping (AVAuthorizationStatus) -> Void) {
        AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeVideo) { (grant) in
            if grant {
                success(.authorized)
            } else {
                failure(.denied)
            }
        }
    }

}
