# Authorizer

- [#PhotoAuthorizer](#photoauthorizer)
- [#CameraAuthorizer](#cameraauthorizer)
- [#MicroPhoneAuthorizer](#microphoneauthorizer)
- [注意](#注意)

iOS 封装权限请求，根据业余项目需要逐步完善，使用 Swift 编写

## 实现协议

[Authorizable](./AuthorizerPod/AuthorizerPod/Authorizable.swift)

```swift
/// 检测是否已经获取到的权限
///
/// - Returns: true 若已经获取到权限，否则 false
public static func authorized() -> Bool
```

```swift
/// 请求获取响应权限
///
/// - Parameters:
///   - success: 权限获取成功的回调
///   - failure: 权限获取失败的回调
public static func requestAuthorization(success: @escaping (_ status: PHAuthorizationStatus) -> Void, failure: @escaping (_ status: PHAuthorizationStatus) -> Void)
```


## PhotosAuthorizer

### 依赖的 Framework

- Photos(已经引入)

### 实现文件

[PhotosAuthorizer.swift](./AuthorizerPod/AuthorizerPod/Photos/PhotosAuthorizer.swift)

### 权限请求描述

NSPhotoLibraryUsageDescription

## CameraAuthorizer

### 依赖的 Framework

- AVFoundation(已经引入)

### 实现文件

[CameraAuthorizer.swift](./AuthorizerPod/AuthorizerPod/Camera/CameraAuthorizer.swift)

### 权限请求描述

NSCameraUsageDescription

## MicroPhoneAuthorizer

### 依赖的 Framework

- AVFoundation(已经引入)

### 实现文件

[MicroPhoneAuthorizer.swift](./AuthorizerPod/AuthorizerPod/Audio/MicroPhoneAuthorizer.swift)

### 权限请求描述

NSMicrophoneUsageDescription

## 注意

系统只会在 App 存活在设备的生命周期中，第一次访问到相关的 API 时，才为 App 向用户请求权限

若用户允许了权限，也需要在访问时检查权限，因为用户可以随时取消权限。而当用户取消了权限后，不检查权限使用 API 会导致问题的发生



