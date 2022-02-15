import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Expanded(
            child: SizedBox(),
            flex: 2,
          ),
          const SizedBox(
            width: 100.0,
            height: 100.0,
            // child: Image.asset('assets/image/.png'),
          ),
          Text(
            "没有网络或数据",
            style: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
          ),
          const Expanded(
            child: SizedBox(),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
