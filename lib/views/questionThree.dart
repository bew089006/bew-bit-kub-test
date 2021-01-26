import 'package:flutter/material.dart';
import 'constants.dart';
import '../services/apiConnector.dart';

ApiConnector apiConnect = new ApiConnector();

class QuestionThree extends StatefulWidget {
  @override
  _QuestionThreeState createState() => _QuestionThreeState();
}

class _QuestionThreeState extends State<QuestionThree> {
  List responseData;

  void getApiData() async {
    responseData = await apiConnect.getResponse();
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Example 3."),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  for (var data in responseData)
                    Expanded(
                      child: Expanded(
                        flex: 1,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("id: ${data["id"]}"),
                                Text("name: ${data["name"]}"),
                                Text("username: ${data["username"]}"),
                                Text("email: ${data["email"]}"),
                                Text("phone: ${data["phone"]}"),
                                Text("website: ${data["website"]}"),
                                Text("company: ${data["company"]["name"]}"),
                                Text("address: ${data["address"]["street"]} ${data["address"]["suite"]} \n" +
                                    "${data["address"]["city"]} ${data["address"]["zipcode"]}"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
