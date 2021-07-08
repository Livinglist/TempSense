import 'package:flutter/material.dart';
import 'package:temp_sense/ui/components/temp_section.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("TempSense"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Colors.deepOrange),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Jiaqi Feng",
                          style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: MediaQuery.of(context).size.width / 2 - 18,
                        width: MediaQuery.of(context).size.width / 2 - 18,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Colors.deepOrange),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Body Temp",
                                style: TextStyle(fontSize: 28, color: Colors.white),
                              ),
                              Text("39 °C", style: TextStyle(fontSize: 48, color: Colors.white)),
                              Spacer(),
                              Text("Recorded at 02/02/2022 22:22", style: TextStyle(fontSize: 10, color: Colors.white54))
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, bottom: 8, top: 8, right: 12),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2 - 18,
                      width: MediaQuery.of(context).size.width / 2 - 18,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Colors.orange),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Heart Rate",
                              style: TextStyle(fontSize: 28, color: Colors.white),
                            ),
                            Text("120", style: TextStyle(fontSize: 48, color: Colors.white)),
                            Spacer(),
                            Text("Recorded at 02/02/2022 22:22", style: TextStyle(fontSize: 10, color: Colors.white54))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            TempSection()
          ],
        ),
      ),
    );
  }
}
