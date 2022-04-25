import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.white,
        child: Column(
              children: [
                topBar(),
                searchBar(),
                Expanded (
                  child: listTable(),
                )
              ]
        )
    );
  }
}

///********************************************************/


class topBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey)
                    )
                ),
                child:
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row (
                        children: [
                          const Text(
                              "Companies",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)
                          ),
                          const Spacer(),
                          ElevatedButton.icon(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                            ),
                            icon: const Icon(CupertinoIcons.plus, size: 12, color: Colors.white,),
                            label: const Text("ADD COMPANY", style: TextStyle(fontSize: 12)),
                          )
                        ]
                    )
                )
            )
        )
      ]
    );
  }
}

class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 5),
            child: Container(
              height: 30,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  FittedBox(
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.filter_list, size: 24),
                    highlightColor: Colors.grey,)
                  ),

                  const Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Search',

                      ),
                    )
                  )
                ],
              )
            ),
        ),
        ),


        Padding(
          padding: const EdgeInsets.only(top: 30, left:5, right:5.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.transparent
                    ),
                      child: FittedBox(
                        child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.file_download_outlined),
                          highlightColor: Colors.red,
                        )
                      )
                  ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 5, right:5.0),
          child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.transparent
              ),
              child: FittedBox(
                  child: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.view_column),
                    highlightColor: Colors.red,
                  )
              )
          ),
        ),

      ]

    );
  }

}

class listTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("content here")
    );
  }

}