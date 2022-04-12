import 'package:flutter/material.dart';

class XDetailsCard extends StatelessWidget {
  const XDetailsCard(
      {Key? key,
      required this.name,
      required this.value,
      this.padding = 0,
      this.radius = 0})
      : super(key: key);

  final String name;
  final String value;
  final double padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.0),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            horizontalTitleGap: 10.0,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 3, horizontal: 15)),
      ),
    );
  }
}
