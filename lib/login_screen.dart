import 'package:blackcoffer/Verify.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    phoneController.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text(
                'Login',
                style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Phone Verification',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                                child: TextField(
                                  enabled: false, // Make this field read-only
                                  controller: phoneController,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(border: OutlineInputBorder(),hintText: '+91'),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Phone no.'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Verify())),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.green),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [Icon(Icons.touch_app), Text('Send Code')],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
