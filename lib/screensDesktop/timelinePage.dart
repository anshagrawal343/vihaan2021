import 'package:flutter/material.dart';
import 'package:vihaan_new/widgets/timelineWidget.dart';

class TimelinePage extends StatelessWidget {
  final List<TimelineItem> _items = [
    TimelineItem(
      title: 'Event 1',
      subtitle: 'Subtitle 1',
      description: 'ABCD',
      child: Icon(
        Icons.arrow_circle_down,
        color: Colors.white,
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'Event 2',
      subtitle: 'Subtitle 2',
      description: 'ABCD',
      child: Icon(
        Icons.ac_unit,
        color: Colors.white,
      ),
      bubbleColor: Colors.purple,
    ),
    TimelineItem(
      title: 'Event 3',
      subtitle: 'Subtitle 3',
      description: 'ABCD',
      child: Icon(
        Icons.accessibility,
        color: Colors.white,
      ),
      bubbleColor: Colors.grey,
    ),
    TimelineItem(
      title: 'Event 4',
      subtitle: 'Subtitle 4',
      description: 'ABCD',
      child: Icon(
        Icons.access_alarm,
        color: Colors.white,
      ),
      bubbleColor: Colors.purple,
    ),
    TimelineItem(
      title: 'Event 4',
      subtitle: 'Subtitle 4',
      description: 'ABCD',
      child: Icon(
        Icons.access_alarm,
        color: Colors.white,
      ),
      bubbleColor: Colors.purple,
    ),
    TimelineItem(
      title: 'Event 4',
      subtitle: 'Subtitle 4',
      description: 'ABCD',
      child: Icon(
        Icons.access_alarm,
        color: Colors.white,
      ),
      bubbleColor: Colors.purple,
    ),
    TimelineItem(
      title: 'Event 4',
      subtitle: 'Subtitle 4',
      description: 'ABCD',
      child: Icon(
        Icons.access_alarm,
        color: Colors.white,
      ),
      bubbleColor: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          child: Stack(children: [
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    //color: Colors.black,
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.all(50.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                      child: Text(
                        "Timeline",
                        style: TextStyle(
                          fontSize: 120,
                          color: Colors.amber[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            BubbleTimeline(
              bubbleDiameter: 100,
              items: _items,
              stripColor: Colors.blue[900],
              scaffoldColor: Colors.amber,
            ),
          ]),
        ),
      ),
    );
  }
}
