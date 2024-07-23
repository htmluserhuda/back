import 'dart:js_interop';

import 'package:back/models/counter_item_model.dart';
import 'package:flutter/material.dart';

class CounterItem extends StatefulWidget {
  const CounterItem({super.key, required this.counterItemModel});

  final CounterItemModel counterItemModel;

  @override
  State<CounterItem> createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
              color: widget.counterItemModel.color,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "${widget.counterItemModel.counter}",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              color: widget.counterItemModel.color,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              widget.counterItemModel.text,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.12,
          decoration: BoxDecoration(
              color: widget.counterItemModel.color,
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
              onPressed: () {
                setState(() {
                  widget.counterItemModel.add();
                });
              },
              icon: Icon(
                Icons.add,
                size: 50,
              )),
        )
      ],
    );
  }
}
