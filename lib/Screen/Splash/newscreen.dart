import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Center(
            child: Row(
              children: [
                Card(
                  color: Colors.green,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },

                    child: const SizedBox(
                      width: 80,
                      height: 60,
                      child: Center(child: Text('JAN',textAlign: TextAlign.center,)),
                    ),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 80,
                      height: 60,
                      child: Center(child: Text('FEB',textAlign: TextAlign.center,)),
                    ),
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 80,
                      height: 60,
                      child: Center(child: Text('MAR',textAlign: TextAlign.center,)),
                    ),
                  ),
                ),

              ],
            ),

          ),
            Center(
              child: Row(
                children: [
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('APR',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('MAY',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('JUN',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),

                ],
              ),

            ),
            Center(
              child: Row(
                children: [
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('JUL',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('AUG',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('SEP',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),

                ],
              ),

            ),Center(
              child: Row(
                children: [
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('OCT',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('NOV',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 60,
                        child: Center(child: Text('DEC',textAlign: TextAlign.center,)),
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
