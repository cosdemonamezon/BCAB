
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class CalendarTab extends StatefulWidget {
  CalendarTab({Key key}) : super(key: key);

  @override
  _CalendarTabState createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  CalendarController _controller;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/c1.jpg"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonVisible: false,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadiusDirectional.circular(20.0)
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,
                ),
                formatButtonShowsNext: false,
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Color(0xff30384c),
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Color(0xff30384c),
                ),
              ),
              calendarStyle: CalendarStyle(
                holidayStyle: TextStyle(letterSpacing: 10),
                todayColor: Colors.orangeAccent,
                selectedColor: Theme.of(context).primaryColor,
                todayStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              
              calendarController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}



