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

  SizedBox size({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  AspectRatio aspectRatio(double aspectRatio) {
    return AspectRatio(
      child: this,
      aspectRatio: aspectRatio,
    );
  }

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
