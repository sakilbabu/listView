import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final String name;

  const ContactPage({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
            // final route = MaterialPageRoute(builder: (BuildContext context) {
            //   return CallLogPage();
            // });
            // Navigator.push(context, route);
          },
        ),
      ),
      backgroundColor: Colors.black38,
      body: Column(
        children: [
          Column(
            children: [
              Image.network(
                "https://scontent.fdac98-1.fna.fbcdn.net/v/t1.6435-9/171454171_914266449397687_3612128448745758074_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEisOCjTV38LmxRo43cDyFGqBvPA9DxoOyoG88D0PGg7G4vul2A7gnCc_2e8NLXF5pmiHzN-9KcIYlUK9sEhhxI&_nc_ohc=yE-zS0rLbpkAX8vPyFj&tn=kalruT0qiA3FxEZA&_nc_ht=scontent.fdac98-1.fna&oh=bc2e597c3260a20a0e8c19b39a954b7a&oe=614F5173",
                height: 64,
                width: 64,
              ),
              SizedBox(height: 5),
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white70),
              ),
              SizedBox(height: 5),
              Text(
                "Yesterday",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 72,
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(42),
                  topRight: Radius.circular(42),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.chat,
                  color: Colors.lightGreen,
                ),
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.video_call,
                  color: Colors.red,
                ),
                Icon(
                  Icons.message,
                  color: Colors.white54,
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 72,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cellular",
                            style: TextStyle(color: Colors.white24),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "01629994330",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.message, color: Colors.black45),
                          Icon(Icons.call, color: Colors.black45),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
