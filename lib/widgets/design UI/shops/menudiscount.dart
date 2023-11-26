import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menudiscound extends StatelessWidget {
  const menudiscound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TOOAY ONLY'
          ),
          const Text(
            '80% OFF',
            style: TextStyle(
              fontSize: 30
            ),
          ),
          Row(
            children: [
              const Text(
                'WITH CODE:',
                style: TextStyle(
              fontSize: 30
            ),
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  ),
                  color: Colors.orange
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10
                  ),
                  child: Text(
                    'GCOMWELOOME',
                    style: TextStyle(
                    fontSize: 20
                  ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
