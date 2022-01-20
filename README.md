<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

FlutterUI，轻便而高效的书写UI。

## Features

- 链式调用
- 简化代码
- 高可读性
- 便于维护

## Getting started

#### 安装依赖：
```yaml
  flutterui: 
```

## Usage


#### 示例

```dart
Row(children: [
    const BlueButton("官方").marginOnly(left: 16),
    const SizedBox(width: 12),
    const WhiteOutlinedButton("线下"),
    const Spacer(),
    const Text("免费").fontSize(10).translate(0, -7)
]).roundedRect(6).paddingAll(8)
```

#### 布局

- padding
- margin
- aspectRatio
- expanded
- positioned 配合stack定位

##### 尺寸

- size
- height
- width

#### 变换

- translate
- rotate
- scale

#### 颜色

- backgroundColor
- backgroundColorInt

#### 效果

- border 边框
- roundedRect 圆角
    - roundedRectVertical
    - roundedRectHorizontal
- blur 模糊
    - blurExpanded 模糊+expanded
-

#### 功能

- action 点击等操作
- onClick
- onDoubleClick
- onLongPress

#### 组件

Text 官方组件 扩展

- color
- colorInt
- fontSize

CircleAvatar 官方组件 扩展

- border 边框

CoverCacheImage 缓存、Cover模式的image

GradientTabIndicator 渐变色tab指示器

Button

- RRectButton 圆角图片
- RRectOutlinedButton 圆角线框图片

Swiper 轮播器

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
