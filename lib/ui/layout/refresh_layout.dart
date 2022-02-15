import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:the_flutter_ui/extension/scope_ex.dart';
import 'package:the_flutter_ui/values/colors.dart';

import 'empty_view.dart';

///刷新容器
class RefreshLayout extends StatelessWidget {
  const RefreshLayout({
    Key? key,
    required this.child,
    this.showEmptyView,
    this.onRefresh,
    this.onLoad,
    this.emptyWidget,
    this.header,
    this.footer,
  }) : super(key: key);

  final Widget child;
  final Widget? emptyWidget;
  final Header? header;
  final Footer? footer;
  final bool Function()? showEmptyView;
  final Future<void> Function()? onRefresh;
  final Future<void> Function()? onLoad;

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        emptyWidget: emptyWidget ??
            (showEmptyView?.let((it) => showEmptyView?.call() == true ? const EmptyView() : null)),
        header: header ?? BallPulseHeader(color: Colors.white, backgroundColor: ColorsValue.blue),
        footer: footer ?? BezierBounceFooter(backgroundColor: ColorsValue.blue),
        onRefresh: () async => await onRefresh?.call(),
        onLoad: () async => await onLoad?.call(),
        child: child);
  }
}
