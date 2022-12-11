import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimeLines extends StatefulWidget {
  const TimeLines({Key? key}) : super(key: key);

  @override
  State<TimeLines> createState() => _TimeLinesState();
}

class _TimeLinesState extends State<TimeLines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Lines'),
      ),
      body: Timeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          itemCount: 10,
          indicatorStyle: IndicatorStyle.dot,
          connectorStyle: ConnectorStyle.solidLine,
          contentsBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(24.0),
              child: Text('Timeline Event $index'),
            );
          },
        ),
      ),
    );
  }
}
