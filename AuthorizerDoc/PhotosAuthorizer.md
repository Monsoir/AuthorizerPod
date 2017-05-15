# PhotosAuthorizer

## 需要的 Framework

### 已经引入

- Photos

## 对应的文件

[PhotosAuthorizer.swift](../AuthorizerPod/Photos/PhotosAuthorizer.swift)

## API

```swift
/// 检测 App 是否已经获取到相册的权限
///
/// - Returns: true 若 App 已经获取到权限，否则 fals
class func authorized() -> Bool
```

```swift
/// 向用户请求获取相册权限
///
/// - Parameters:
///   - success: 相册权限获取成功的回调
///   - failure: 相册权限获取失败的回调
class func requestAuthorization(success: @escaping (_ status: PHAuthorizationStatus) -> Void, failure: @escaping (_ status: PHAuthorizationStatus) -> Void)
```

## 注意

系统只会在 App 存活在设备的生命周期中，第一次访问到 Photos 的 API 时，才为 App 向用户请求权限

若用户允许了权限，也需要在访问时检查权限，因为用户可以随时取消权限。而当用户取消了权限后，不检查权限使用 API 会导致问题的发生

