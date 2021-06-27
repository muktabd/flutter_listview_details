import 'package:flutter/material.dart';

showDialogAlartBox(BuildContext context, List title) {
  var temp;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add a value in toList"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Title"),
                  onChanged: (value) {
                    temp = value;
                  },
                ),
                /* SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Sub Title"),
                    onChanged: (value) {
                      subTemp = value;
                    },
                  ), */
                ElevatedButton(
                  onPressed: () {
                    title.add(temp);
                    //subTitle.add(subTemp);
                    Navigator.of(context).pop();
                  },
                  child: Text("Add values"),
                ),
              ],
            ),
          ),
          actions: [],
        );
      });
}
