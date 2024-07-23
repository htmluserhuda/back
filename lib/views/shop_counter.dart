import 'package:back/constants/counter_list.dart';
import 'package:back/models/counter_item_model.dart';
import 'package:back/widgets/counter_item.dart';
import 'package:back/widgets/shop_image.dart';
import 'package:flutter/material.dart';

class ShopCounter extends StatelessWidget {
  const ShopCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: MediaQuery.of(context).size.height * 0.11,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              color: Color(0xffF3CCF3),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Skin Care",
              style: TextStyle(color: Color(0xffE178C5), fontSize: 40),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: [
            ShopImage(),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CounterItem(counterItemModel: counterList[index]);
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: counterList.length,
            )
          ],
        ),
      ),
    );
  }
}
