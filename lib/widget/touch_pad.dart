import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberTouchPad extends StatelessWidget {
  final List<int> dataList = [7, 8, 9, 4, 5, 6, 1, 2, 3, -1, 0, -2];

  NumberTouchPad({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (ctx, index) {
        if (dataList[index] == -1) {
          return _Item(
              child: Icon(
            Icons.backspace_outlined,
            color: Colors.lightGreen,
            size: 40,
          ));
        }
        if (dataList[index] == -2)
          return _Item(
              child: Icon(
            Icons.arrow_right_alt_rounded,
            color: Colors.lightGreen,
            size: 40,
          ));
        return _Item(
            child: Text(
          dataList[index].toString(),
          style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ));
      },
      itemCount: dataList.length,
    );
  }
}

class _Item extends StatelessWidget {
  final Widget child;

  const _Item({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffc6d491), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
