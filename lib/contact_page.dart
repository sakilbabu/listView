import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final String name;

  ContactPage({Key? key, required this.name}) : super(key: key);
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
              Container(
                color: Colors.blue,
                child: Image.asset("assets/images/girl.jpeg",
                    height: 300,
                    width: 500,
                    alignment: Alignment.bottomLeft,
                    repeat: ImageRepeat.repeatX,
                    color: Colors.blue,
                    colorBlendMode: BlendMode.dstATop,
                    // fit: BoxFit.fill,
                    errorBuilder: (BuildContext context, obj, trace) {
                  return Column(children: [
                    Icon(Icons.error),
                    // Text("${trace}"),
                    Text("${obj}"),
                  ]);
                }),
              ),
              Image.network(
                "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
                height: 108,
                width: 108,
              ),
              SizedBox(height: 5),
              Text(
                name,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white70,
                    decoration: TextDecoration.overline),
              ),
              SizedBox(height: 5),
              Text(
                "Yesterday \u{1F602}",
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
