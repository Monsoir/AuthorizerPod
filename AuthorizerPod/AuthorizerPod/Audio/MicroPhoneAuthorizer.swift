//
//  MicroPhoneAuthorizer.swift
//  AuthorizerPod
//
//  Created by Mon on 20/05/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit
import AVFoundation

// NSMicrophoneUsageDescription
public class MicroPhoneAuthorizer: NSObject, Authorizable {
    public static func authorized() -> Bool {
        return AVCaptureDevice.authorizationStatus(forMediaType: AVMediaTypeAudio) == .authorized
    }
    
    typealias AuthorizationType = AVAuthorizationStatus
    public static func requestAuthorization(success: @escaping (AVAuthorizationStatus) -> Void, failure: @escaping (AVAuthorizationStatus) -> Void) {
        AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeAudio) { (grant) in
            if grant {
                success(.authorized)
            } else {
                failure(.denied)
            }
        }
    }
}
