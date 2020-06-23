import 'package:flutter/material.dart';

class InfoPageBookingInfo extends StatelessWidget {
  int dateNum = 12;
  int dateDay = 1;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 400,
      left: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (_, i) {
                  if (i == 0) {
                    return DateSelectorBox(
                      dataDay: daysDay[i],
                      dateNum: daysNum[i],
                    )..selected =true;
                  }
                  return DateSelectorBox(
                    dataDay: daysDay[i],
                    dateNum: daysNum[i],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> daysDay = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  List<String> daysNum = ['10', '11', '12', '13', '14', '16', '15'];
}

class DateSelectorBox extends StatefulWidget {
  bool selected = false;
  final String dateNum;
  final String dataDay;

  DateSelectorBox({Key key, this.dateNum, this.dataDay}) : super(key: key);

  @override
  _DateSelectorBoxState createState() => _DateSelectorBoxState();
}

class _DateSelectorBoxState extends State<DateSelectorBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
                width: 2,
                color: (widget.selected) ? Colors.blue : Colors.black38),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.dataDay,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: (widget.selected) ? Colors.black : Colors.black38,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                widget.dateNum,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: (widget.selected) ? Colors.black : Colors.black38,
                ),
              )
            ],
          )),
        ),
        onTap: () {
          setState(() {
            widget.selected = (widget.selected) ? false : true;
          });
        },
      ),
    );
  }
}
