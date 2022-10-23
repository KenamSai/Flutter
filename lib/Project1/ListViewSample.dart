import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewSample extends StatefulWidget {
  const ListViewSample({super.key});

  @override
  State<ListViewSample> createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
  List<String> stateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    "Lakshadweep",
    "Puducherry"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: stateList.length,
        itemBuilder: (context, index) {
          final String state = stateList[index];
          return GestureDetector(
            onTap: (() {
              showAlert(state);
            }),
            child: ListTile(
              title: Text(state),
              leading: Icon(Icons.read_more),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    "data:image/jpeg;base64,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"),
              ),
            ),
          );

          // return Card(
          //   child: Center(
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("$state"),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }

  showAlert(String state) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return CupertinoAlertDialog(
            title: Text("selected state is $state"),
            actions: [
              TextButton(
                onPressed: null,
                child: Text("ok"),
              )
            ],
          );
        });
  }
}
