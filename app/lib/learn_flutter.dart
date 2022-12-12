import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool skittle_swap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.home)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(skittle_swap ? 'images/1.png' : 'images/2.png'),
          const SizedBox(),
          const Divider(
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.8, // 0.8 of screen
            color: Colors.black,
            child: skittle_swap
                ? const Text(
                    'This is Hornikittle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )
                : const Text(
                    'This is sklittle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
          ),
          OutlinedButton(
            onPressed: () {
              // debugPrint('UwUuU');
            },
            child: const Text("UwU SwUich"),
          ),
          Switch(
              value: skittle_swap,
              onChanged: (bool newBool) {
                setState(() {
                  skittle_swap = newBool;
                });
              }),
          Image.asset(skittle_swap ? 'images/1.png' : 'images/2.png'),
        ]),
      ),
    );
  }
}
