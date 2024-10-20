import 'package:flutter/material.dart';

class CusContainer extends StatelessWidget {
  const CusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(4.0, 4.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15,
                spreadRadius: 1,
              )
            ],
            color: Colors.grey.shade300,

            // border: Border.all(
            //   color: Colors.black,
            //   width: 3,
            // ),
            //shape: BoxShape.circle,
          ),
          child: const Center(child: Text('Day Twenty One')),
        ),
      ),
    );
  }
}
