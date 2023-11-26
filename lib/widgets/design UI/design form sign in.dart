import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class formsignin extends StatefulWidget {
   formsignin({super.key});
  
  @override
  State<formsignin> createState() => _formsigninState();
}
   TextEditingController usernamecontraller=TextEditingController();
   TextEditingController passwordcontraller=TextEditingController();
   bool ishide=true;
class _formsigninState extends State<formsignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 241, 238, 226),
      body: SafeArea(
        child: Column(  
          children: [
          const SizedBox(
           height: 60,
           width: double.infinity,
          ),
          const Text(
                'Hello Again!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PinyonScript-Regular',
                  fontSize: 35,
                  ),
              ),
          const SizedBox(
           height: 20,
          ),
           const Text(
            'Wellcome back you`ve',
              style: TextStyle(
                fontSize: 25
              ),
           ),
          const Text(
            'been missed!',
              style: TextStyle(
                fontSize: 25
              ),
           ),
          const SizedBox(
           height: 25,
          ),
           Padding(
             padding: const EdgeInsets.only(right: 30,left: 30,top: 10),
             child: TextFormField(
             controller: usernamecontraller,              
              decoration: InputDecoration(
                hintText: 'Enter uername',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),
                filled: true,
                fillColor: Colors.white
              ),
              keyboardType: TextInputType.name,
          ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 30,left: 30,top: 20),
             child: TextFormField(
              controller: passwordcontraller,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon:  IconButton(
                  onPressed: () {
                    setState(() {
                       ishide=!ishide;
                    });
                  }, 
                  icon: Icon(
                    ishide?Icons.visibility_off: Icons.visibility,
                  )
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),
                filled: true,
                fillColor: Colors.white
              ),
              obscureText: ishide,
              keyboardType: TextInputType.visiblePassword,
          ),
           ),
          const Padding(
             padding: EdgeInsets.only(right: 20),
             child: ListTile(
              trailing: Text(
                'Recovery password'
              ),
             ),
           ),
            InkWell(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration:  BoxDecoration(
                        color:const Color.fromARGB(255, 179, 19, 242),
                        borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Cardo-Bold',
                          ),
                        ),
                      ),
                    ),
                   ),
                   const SizedBox(
                      height: 25,
                      ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                      width: 20,
                      ),
                      Container(
                        width: 100, 
                        height: 2,
                        decoration:const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 215, 10, 82), 
                               Color.fromARGB(255, 238, 219, 219)
                            ])
                        ),
                      ), 
                      const Text(
                        'Or continue with'
                      ),
                      Container(
                        width: 100, 
                        height: 2,
                        decoration:const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 215, 10, 82), 
                               Color.fromARGB(255, 238, 219, 219)
                            ])
                        ),
                      ),
                      const SizedBox(
                      width: 20,
                      ),
                    ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 80, 
                            height: 70,
                            decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 243, 248, 243),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                               image: const DecorationImage(
                                  image: AssetImage('images/google.png'),
                                )
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 80, 
                            height: 70,
                            decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 243, 248, 243),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/instagram.png'),
                                  fit: BoxFit.contain
                                )
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 80, 
                            height: 70,
                            decoration: BoxDecoration(
                             color:const Color.fromARGB(255, 243, 248, 243),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/facebook.png'),  
                                )
                            ), 
                          ),
                        )
                      ],
                     ),
                   ),
                   const SizedBox(
                    height: 45,
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Not a membet?'
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child:const Text(
                          ' Register now',
                          style: TextStyle(
                            color: Color.fromARGB(255, 71, 7, 233),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                   )
          ],
        ),
      ),
    );
  }
}