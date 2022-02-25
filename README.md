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

### V0.3.9 文档

后续会继续开发更新。

#### 特性

- 链式调用
- 简化代码
- 高可读性
- 便于维护

#### 安装
```yaml
dependencies:
  the_flutter_ui: ^0.3.9
```

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
  1. paddingAll
  2. paddingSymmetric(double horizontal,double vertical)
  3. paddingLeft
  4. paddingRight
  5. paddingTop
  6. paddingBottom
  7. padding
- margin
  1. marginAll
  2. 同上
- flexible
- aspectRatio
- expanded
- positioned 配合stack定位

##### 尺寸

- size
- height
- width
- constraints 约束
  1. maxWidth
  2. maxHeight
  3. minWidth
  4. minHeight
  5. constraints

#### 列表
- inList
- inSliverList
- SliverLazyColumn<T>(data, childCount, child)

#### 变换

- translate(double dx, double dy)
- rotate(double angle)
- scale(double scale)

#### 颜色

- backgroundColor
- backgroundColorInt

#### 效果

- roundedRect 圆角
  1. roundedRect
  2. roundedRectVertical
  3. roundedRectHorizontal
- blur 毛玻璃
  1. blur 毛玻璃
  2. blurExpanded 模糊+expanded

#### 功能

- action 点击等操作
- onClick
- onDoubleClick
- onLongPress


#### 组件

- RefreshLayout
  上拉下拉 刷新容器

- BottomFloatingActionButtonLocation
  fab控件 底部定位

- CoverCacheImage(imageUrl,{placeholder})
  缓存、Cover模式的image

- GradientTabIndicator
  渐变色tab指示器

- Button
  1. RRectButton 圆角图片
  2. RRectOutlinedButton 圆角线框图片

- Swiper
  轮播器 （三层：内容层、蒙版层、指示器层）


#### 官方组件扩展

Text
- color
- colorInt
- fontSize
- fontFamily
- fontWeight
- bold
- italic
- strikethrough
- underLine
- overLine
- letterSpacing
- wordSpacing
- lineSpacing
- lineLimit
- singleLine
- textAlignment

CircleAvatar
- border 边框

Image
- coverMode
- containMode
- size
- antialias 抗锯齿


TextField
- color
- colorInt
- fontSize
- fontFamily
- fontWeight
- bold
- italic
- strikethrough
- underLine
- overLine
- letterSpacing
- wordSpacing
- lineSpacing
- lineLimit
- noLineLimit
- singleLine
- textAlignment
- hint
- hintStyle
- hintWeight
- hintColor
- hintSize
- hintFamily
- border
- noBorder


TODO
- 网络状态、数据状态容器
- 其他
## Additional information

TODO: Tell users more about the package: where to find more information, how to contribute to the package, how to file
issues, what response they can expect from the package authors, and more.
