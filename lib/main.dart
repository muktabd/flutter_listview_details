import 'package:flutter/material.dart';
import 'package:listview_sample/showDialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewSample(),
    );
  }
}

class ListViewSample extends StatefulWidget {
  ListViewSample({Key? key}) : super(key: key);

  @override
  _ListViewSampleState createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
  final List title = [];
  final List subTitle = [];

  int a = 2;

  var temp, subTemp;

  // final List title = ["Title 1", "Title 2", "Title 3"];
  // final List subTitle = ["Sub Title 1", "Sub Title 2", "Sub Title 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ListView Sample"),
            IconButton(
              onPressed: () {
                setState(() {
                  showDialogAlartBox(context, title);
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blueGrey,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("ListView Samples"),
            SizedBox(height: 10),
            
            /* TextFormField(
              decoration: InputDecoration(labelText: "Title"),
              onChanged: (value) {
                temp = value;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: "Sub Title"),
              onChanged: (value) {
                subTemp = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  title.add(temp);
                  subTitle.add(subTemp);
                });
              },
              child: Text("Add values"),
            ), */

            /* 
            Sample one 
            static listview
            */
            /* Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      title: Text("Title"),
                      subtitle: Text("Subtitile"),
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () {
                          //
                        },
                        icon: Icon(Icons.face),
                      ),
                    ),
                  ),
                ],
              ),
            ), */

            /* 
            * Sample two 
            * Manual Indexing
            */
            /* Expanded(
              child: title.length > 0
                  ? ListView(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Title : ${title[0]}"),
                            subtitle: Text("Subtitile :${subTitle[0]}"),
                            leading: Icon(Icons.person),
                            trailing: IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.face)),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Title : ${title[1]}"),
                            subtitle: Text("Subtitile :${subTitle[1]}"),
                            leading: Icon(Icons.person),
                            trailing: IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.face)),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Title : ${title[2]}"),
                            subtitle: Text("Subtitile :${subTitle[2]}"),
                            leading: Icon(Icons.person),
                            trailing: IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.face)),
                          ),
                        ),
                      ],
                    )
                  : Text("No data found"),
            ), */

            /* Sample three 
            * Dynamic Indexing
            */
            /* Expanded(
              child: title.length > 0
                  ? ListView(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Title : ${title[0]}"),
                            subtitle: Text("Subtitile :${subTitle[0]}"),
                            leading: Icon(Icons.person),
                            trailing: IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.face)),
                          ),
                        ),
                      ],
                    )
                  : Text("No data found"),
            ), */
            
            /* Sample four 
            * Dynamic Indexing with builder
            */
            /* Expanded(
              child: title.length > 0 
              ? ListView.builder(
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text("Title : ${title[index]}"),
                      subtitle: Text("Subtitile :${subTitle[index]}"),
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () {
                          //
                        },
                        icon: Icon(Icons.face),
                      ),
                    ),
                  );
                },
              ) : Text("no data found"),
            ) */

            /* Sample five 
            * Dynamic toList
            */
            /* Expanded(
              child: ListView(
                children: title
                    .map(
                      (title) => Card(
                        child: Column(
                          children: [
                            Text(title),
                            //Text(subTitle[]),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ), */

            /* Sample five 
            * Dynamic toList add value from inclass dialogbox
            */
            /* Expanded(
              child: ListView(
                children: title
                    .map(
                      (title) => Card(
                        child: Column(
                          children: [
                            Text(title),
                            //Text(subTitle[]),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ), */

            /* Sample five 
            * Dynamic toList add value from out side of the class dialogbox
            */
            /* Expanded(
              child: ListView(
                children: title
                    .map(
                      (title) => Card(
                        child: Column(
                          children: [
                            Text(title),
                            //Text(subTitle[]),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ), */

            /*Sample five 
            * Dynamic toList add value from out side of the class dialogbox
            */
            Expanded(
              child: title.length > 0
                  ? ListView.builder(
                      itemCount: title.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            title: Text(" Title is : ${title[index]}"),
                          ),
                        );
                      },
                    )
                  : Center(child: Text("No data found")),
            ),
          ],
        ),
      ),
    );
  }
/* 
  showDialogAlartBox(BuildContext context) {
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
                      setState(() {
                        title.add(temp);
                        subTitle.add(subTemp);
                      });
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
   */
}
