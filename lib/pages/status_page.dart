import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/status_model.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(statusData[i].avatar),
                    ),
                    title: Text(
                      statusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      statusData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    onTap: () {
                      print("Open status");
                    },
                  )
                ],
              )),
    );
  }
}
