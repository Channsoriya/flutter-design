import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class allbutton extends StatelessWidget {
  const allbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: (){

              },
              child: const Text('ElevatedButton')
              ),
           MaterialButton(
            color: Colors.green,
            onPressed: (){

            },
            child: const Text(
              'MaterialButton'
              ),),
              CupertinoButton(
                color: Colors.black,
                child: const Text(
                  'CupertinoButton'
                ), 
                onPressed: (){

                }),
                TextButton(    
                  onPressed: (){

                  }, 
                  child: const Text(
                    'TextButton'
                  )
                ),
                IconButton(
                  onPressed: (){

                  },
                   icon: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 219, 25, 161),
                   ),
                   ),
                   InkWell(
                    onTap: (){
                      print('hello');
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage('images/kun khmer1.jpg')
                        )
                      ),
                    ),
                   ),
                   GestureDetector(
                    onTap: (){
                      print('hello');
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage('images/kun khmer1.jpg')
                        )
                      ),
                    ),
                   )
          ],
        ),
      ),
    );
  }
}