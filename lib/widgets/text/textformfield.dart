import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textformfield extends StatefulWidget {
 textformfield({super.key});

  @override
  State<textformfield> createState() => _textformfieldState();
}
class _textformfieldState extends State<textformfield> {

 TextEditingController emailcontroller=TextEditingController();
 TextEditingController passwordcontroller=TextEditingController();
 final forkey=GlobalKey<FormState>();
 void lognIn(){
  if(forkey.currentState!.validate());
}
bool ishide=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title:const Text(
          'Text Form field'
        ),
      ),
      body: Form(
        key: forkey,
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailcontroller,
              // onChanged: (value) {
              // print(value);
              // },
              decoration: InputDecoration(
                label:const Text(
                  'Your Email'
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), 
                ),
               errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:const BorderSide(
                  width: 2,
                  color: Colors.red
                )
               ),
                prefixIcon:const Icon(
                  Icons.email,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    emailcontroller.clear();
                  },
                   icon:const Icon(Icons.close))
              ),
              validator: (val) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val!)
                            ? null
                            : "Please enter a valid email";
                      },
            ),
          ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordcontroller,
              // onChanged: (value) {
              // print(value);
              // },
              decoration: InputDecoration(
                label:const Text(
                  'Password'
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20), 
                ),
               errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red
                )
               ),
                prefixIcon:const Icon(
                  Icons.lock,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      ishide=!ishide;
                    });
                  },
                   icon: Icon(
                     ishide?Icons.visibility_off: Icons.visibility,
                   ))
              ),
              validator: (val) {
                       if(val!.length<8){
                        return 'password must be 8 charecter';
                       }
                      },
                      obscureText: ishide,
            ),
          ),
          ElevatedButton(
            onPressed: () {
             print(emailcontroller.text);
             lognIn();
            },
             child:const Text(
              'Logn in',
              
             )),

          ],
      
        ),
      ),
    );
  }
}