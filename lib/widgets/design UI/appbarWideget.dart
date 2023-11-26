import 'package:flutter/material.dart';
class appbarWideget extends StatelessWidget {
  const appbarWideget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),
                  borderSide: BorderSide(
                    width: 0.1,
                    color: Color.fromARGB(255, 220, 216, 216),
                    style: BorderStyle.none
                  )
                ),
                filled: true,
                fillColor: Colors.white
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('images/kun khmer1.jpg'),
            radius: 35,
          )
        ],
      ),
    );
  }
}