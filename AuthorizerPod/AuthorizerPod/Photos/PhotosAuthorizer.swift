//
//  PhotosAuthorizer.swift
//  Pota
//
//  Created by Mon on 25/01/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit
import Photos

// NSPhotoLibraryUsageDescription

public class PhotosAuthorizer: NSObject, Authorizable {
    
    public static func authorized() -> Bool {
        return PHPhotoLibrary.authorizationStatus() == .authorized
    }
    
    typealias AuthorizationType = PHAuthorizationStatus
    public static func requestAuthorization(success: @escaping (_ status: PHAuthorizationStatus) -> Void, failure: @escaping (_ status: PHAuthorizationStatus) -> Void) {
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
