import 'package:flutter/material.dart';
import '../components/List.component.dart';
import './Detail.page.dart';
import '../components/Detail.component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedValue;
  bool isVertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {


        isVertical = orientation == Orientation.portrait;

        return Row(
          children: <Widget>[
            Expanded(
                child: ListWidget(10, (value) {

                  if (isVertical) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DetailPage(value);
                        }
                    ));
                  } else {
                    selectedValue = value;
                    setState(() {});
                  }
                })
            ),
            isVertical ? Container() : Expanded(child: DetailWidget(selectedValue))
          ],
        );
      })
    );
  }
}

