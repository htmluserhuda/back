import 'package:back/models/counter_item_model.dart';
import 'package:back/widgets/counter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class electronicCounter extends StatelessWidget {
  const electronicCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              color: Color(0xffF3CCF3),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "هل ذكرت الله اليوم؟",
              style: TextStyle(color: Color(0xffE178C5), fontSize: 40),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "سبحان الله",
                color: Color(0xff3ABEF9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "الحمد لله",
                color: Color(0xff3ABEF9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "لا اله الا الله",
                color: Color(0xff3ABEF9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "الله أكبر",
                color: Color(0xff3ABEF9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "لا حول ولا قوة الا بالله",
                color: Color(0xff3ABEF9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CounterItem(
              counterItemModel: CounterItemModel(
                text: "اللهم صل وسلم وبارك على سيدنا محمد",
                color: Color(0xff3ABEF9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
