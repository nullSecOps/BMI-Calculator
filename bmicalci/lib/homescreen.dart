import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'BMI APP',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'BMI',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                    label: Text('Enter Your Weight In KG'),
                    prefixIcon: Icon(Icons.line_weight),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                    label: Text('Enter Your height In feet'),
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: inchController,
                decoration: InputDecoration(
                    label: Text('Enter Your height in inch'),
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    var ft = ftController.text.toString();
                    var inch = ftController.text.toString();
                    var weight = wtController.text.toString();
                    if (weight != '' && inch != '' && ft != '') {
                      var iWt = int.parse(weight);
                      var iInch = int.parse(inch);
                      var iFt = int.parse(ft);

                      var Tinch = (iFt * 12) + iInch;

                      var tCm = Tinch * 2.54;
                      var tM = tCm / 100;
                      var bmi = iWt / (tM * tM);

                      result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                      setState(() {});
                    } else {
                      setState(() {});
                      result = "please fill all the blanks";
                    }
                  },
                  child: Text('calculate')),
              Text('$result'),
            ],
          ),
        ),
      ),
    );
  }
}
