import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.red[50],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .05,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * .76,
                child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * .45,
                        height: MediaQuery.sizeOf(context).width * .45,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 187, 255, 178),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
