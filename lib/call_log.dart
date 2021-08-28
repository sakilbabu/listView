import 'package:flutter/material.dart';
import 'contact_page.dart';

class CallLogPage extends StatelessWidget {
  const CallLogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Call Logs"),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    final route =
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ContactPage(name: "Shakil $index");
                    });
                    Navigator.push(context, route);
                    // Navigator.pushReplacement(context, route);
                  },
                  child: Column(
                    children: [
                      Text("Shakil $index"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("015872665"),
                          Text("3:00 am"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
