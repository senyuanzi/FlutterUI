part of ui;

extension LayoutX<T extends Widget> on T {
  //
  // SizedBox wrapContent() {
  //   return SizedBox.shrink(child: this);
  // }
  //
  // SizedBox matchParent() {
  //   return SizedBox.expand(child: this);
  // }

  //  布局

  Padding paddingAll(double size) {
    return padding(left: size, right: size, top: size, bottom: size);
  }

  Padding get paddingZero => padding();

  Padding paddingSymmetric({double horizontal = 0, double vertical = 0}) {
    return padding(left: horizontal, right: horizontal, top: vertical, bottom: vertical);
  }

  Padding paddingLeft(double size) {
    return padding(left: size);
  }

  Padding paddingRight(double size) {
    return padding(right: size);
  }

  Padding paddingTop(double size) {
    return padding(top: size);
  }

  Padding paddingBottom(double size) {
    return padding(bottom: size);
  }

  Padding padding({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(
      padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  //______margin_______

  Container marginAll(double size) {
    return margin(left: size, right: size, top: size, bottom: size);
  }

  Container get marginZero => margin();

  Container marginSymmetric({double horizontal = 0, double vertical = 0}) {
    return margin(left: horizontal, right: horizontal, top: vertical, bottom: vertical);
  }

  Container marginLeft(double size) {
    return margin(left: size);
  }

  Container marginRight(double size) {
    return margin(right: size);
  }

  Container marginTop(double size) {
    return margin(top: size);
  }

  Container marginBottom(double size) {
    return margin(bottom: size);
  }

  Container margin({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Container(
      margin: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  //transform 变换

  Transform translate(double dx, double dy) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: this,
    );
  }

  Transform rotate(double angle) {
    return Transform.rotate(
      angle: angle,
      child: this,
    );
  }

  Transform scale(double scale) {
    return Transform.scale(
      scale: scale,
      child: this,
    );
  }

  //Flex
  Flexible flexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) {
    return Flexible(flex: flex, fit: fit, child: this);
  }

  Expanded expanded() {
    return Expanded(child: this);
  }

  Positioned positioned(
      {double? left, double? right, double? top, double? bottom, double? width, double? height}) {
    return Positioned(
      child: this,
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      width: width,
      height: height,
    );
  }

  //套入一个方形的盒子
  // SizedBox square(double size) {
  //   return SizedBox.square(child: this, dimension: size);
  // }

  //尺寸相关

  SizedBox height(double? height) {
    return SizedBox(height: height, child: this);
  }

  SizedBox width(double? width) {
    return SizedBox(width: width, child: this);
  }

  ConstrainedBox maxWidth(double? size) {
    return constraints(maxWidth: size);
  }

  ConstrainedBox maxHeight(double? size) {
    return constraints(maxHeight: size);
  }

  ConstrainedBox minWidth(double? size) {
    return constraints(minWidth: size);
  }

  ConstrainedBox minHeight(double? size) {
    return constraints(minHeight: size);
  }

  SizedBox size({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  ConstrainedBox constraints(
      {double? maxWidth, double? maxHeight, double? minWidth, double? minHeight}) {
    BoxConstraints constraints = BoxConstraints(
        maxWidth: maxWidth ?? double.infinity,
        maxHeight: maxHeight ?? double.infinity,
        minWidth: minWidth ?? 0,
        minHeight: minHeight ?? 0);

    if (this is ConstrainedBox) {
      var thisConstraints = (this as ConstrainedBox).constraints;
      constraints =
          maxWidth?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          maxHeight?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          minWidth?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
      constraints =
          minHeight?.let((it) => thisConstraints.copyWith(maxWidth: maxWidth)) ?? thisConstraints;
    }
    return ConstrainedBox(constraints: constraints, child: this);
  }

  ///aspect ratio 纵横比
  AspectRatio aspectRatio(double aspectRatio) {
    return AspectRatio(
      child: this,
      aspectRatio: aspectRatio,
    );
  }

  //集合容器
  ///todo 固定行为 的头部或尾部
  ///todo align相关

  ListView inList({
    void Function(BuildContext context, int index)? onItemClick,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry? padding,
    double? itemExtent,
    Widget? prototypeItem,
    int? itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior =
        ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return ListView.builder(
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
        itemBuilder: (context, index) => action(onClick: () => onItemClick?.call(context, index)),
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior);
  }

  SliverList inSliverList({
    void Function(BuildContext context, int index)? onItemClick,
    int? Function(Key)? findChildIndexCallback,
    int? childCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    int semanticIndexOffset = 0,
  }) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => action(onClick: () => onItemClick?.call(context, index)),
      findChildIndexCallback: findChildIndexCallback,
      childCount: childCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexOffset: semanticIndexOffset,
    ));
  }
}

// class LazyColumn<T> extends StatelessWidget {
//   const LazyColumn({
//     Key? key,
//     required this.data,
//     required this.childCount,
//     required this.child,
//     this.onItemClick,
//     this.findChildIndexCallback,
//     this.addAutomaticKeepAlives = true,
//     this.addRepaintBoundaries = true,
//     this.addSemanticIndexes = true,
//     this.semanticIndexOffset = 0,
//   }) : super(key: key);
//
//   final Widget Function(BuildContext context, T element, int index) child;
//   final List<T> data;
//   final void Function(BuildContext context, T element, int index)? onItemClick;
//
//   final ChildIndexGetter? findChildIndexCallback;
//   final int? childCount;
//   final bool addAutomaticKeepAlives;
//
//   final bool addRepaintBoundaries;
//   final bool addSemanticIndexes;
//
//   final int semanticIndexOffset;
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//         delegate: SliverChildBuilderDelegate(
//               (context, index) {
//             var element = data[index];
//             onItemClick?.call(context, element, index);
//             return child.call(context, element, index);
//           },
//           findChildIndexCallback: findChildIndexCallback,
//           childCount: data.length,
//           addAutomaticKeepAlives: addAutomaticKeepAlives,
//           addRepaintBoundaries: addRepaintBoundaries,
//           addSemanticIndexes: addSemanticIndexes,
//           semanticIndexOffset: semanticIndexOffset,
//         ));
//   }
// }

class SliverLazyColumn<T> extends StatelessWidget {
  const SliverLazyColumn({
    Key? key,
    required this.data,
    required this.childCount,
    required this.child,
    this.onItemClick,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.semanticIndexOffset = 0,
  }) : super(key: key);

  const SliverLazyColumn.bind(
    this.data, {
    Key? key,
    required this.childCount,
    required this.child,
    this.onItemClick,
    this.findChildIndexCallback,
  })  : semanticIndexOffset = 0,
        addSemanticIndexes = true,
        addRepaintBoundaries = true,
        addAutomaticKeepAlives = true,
        super(key: key);

  // SliverLazyColumn layout(Widget Function(BuildContext context, T element, int index) child) {
  //   return this;
  // }

  final Widget Function(BuildContext context, T element, int index) child;
  final List<T> data;
  final void Function(BuildContext context, T element, int index)? onItemClick;

  final ChildIndexGetter? findChildIndexCallback;
  final int? childCount;
  final bool addAutomaticKeepAlives;

  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;

  final int semanticIndexOffset;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        var element = data[index];
        onItemClick?.call(context, element, index);
        return child.call(context, element, index);
      },
      findChildIndexCallback: findChildIndexCallback,
      childCount: childCount ?? data.length,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexOffset: semanticIndexOffset,
    ));
  }
}
