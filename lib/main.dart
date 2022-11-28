import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crave Guest Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  //TextEditingController gender = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();

  List<Step> stepList()=> [
    Step(
      state: _activeStepIndex<= 0? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 0,
      title: const Text('Personal\nDetails'),
      content: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25.0, right: 30.0, bottom: 25.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Name',
                hintText: 'Full Name',
                icon: Icon(Icons.person),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
            TextFormField(
              controller: mobileNumber,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Mobile Number',
                hintText: 'Mobile Number',
                icon: Icon(Icons.call),
              ),
              keyboardType: TextInputType.number,
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Email Id',
                hintText: 'Email Id',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            // TextFormField(
            //   controller: email,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     filled: true,
            //     labelText: 'Select Gender',
            //     hintText: 'Gender',
            //     icon: Icon(Icons.people),
            //   ),
            //   keyboardType: TextInputType.text,
            // ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                iconSize: 32,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: 'Select Gender',
                  hintText: 'Gender',
                  icon: Icon(Icons.people_rounded),
                ),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.blueAccent,),
                items: <String>['Male', 'Female', 'Other'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );

                }).toList(),
                onChanged: (values) {setState(() {

                });},
              ),
            )
          ],
        ),
      ),
),
    Step(
      state: _activeStepIndex<= 1? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 1,
      title: const Text('Full\nAddress'),
      content: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25.0, right: 30.0, bottom: 25.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextFormField(
              controller: address,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Street 1:',
                hintText: 'Street 1 Address',
                icon: Icon(Icons.location_city),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Street 2:',
                hintText: 'Street 2 Address',
                icon: Icon(Icons.home),
              ),
              keyboardType: TextInputType.number,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter City:',
                hintText: 'City',
                icon: Icon(Icons.location_city),
              ),
              keyboardType: TextInputType.text,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            TextFormField(
              controller: pincode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Zip Code:',
                hintText: 'Zip',
                icon: Icon(Icons.pin),
              ),
              keyboardType: TextInputType.text,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter State:',
                hintText: 'State',
                icon: Icon(Icons.map),
              ),
              keyboardType: TextInputType.text,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Country:',
                hintText: 'Country',
                icon: Icon(Icons.flag),
              ),
              keyboardType: TextInputType.text,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
          ],
        ),
      ),
    ),
    Step(
      state: _activeStepIndex<= 2? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 2,
      title: const Text('Company\nDetails'),
      content: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25.0, right: 30.0, bottom: 25.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Company Name',
                hintText: 'Company Name',
                icon: Icon(Icons.local_post_office),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Mobile Number',
                hintText: 'Mobile Number',
                icon: Icon(Icons.call),
              ),
              keyboardType: TextInputType.number,
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Email Id',
                hintText: 'Email Id',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
          ],
        ),
      ),
    ),
    Step(
      state: StepState.complete,
      isActive: _activeStepIndex >= 3,
      title: const Text('Confirm'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Name: ${name.text}'),
          Text('Email: ${email.text}'),
          Text('Gender: ${email.text}'),
          Text('Address : ${address.text}'),
          Text('PinCode : ${pincode.text}'),
        ],
      ))
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Guest Registration Form'),),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            _activeStepIndex += 1;
          }
          setState(() {

          },);
        },
        onStepCancel: (){
          if(_activeStepIndex ==0){
            return;
          }
          _activeStepIndex -=1;
          setState(() {

          });
        },
      ),
    );
    }
  }
