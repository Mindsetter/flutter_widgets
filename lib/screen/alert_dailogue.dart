import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  void _showdialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Do you want to quit?'),
            content: const Text('Are you sure you want to quit?'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
              MaterialButton(
                onPressed: () {
                  return Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.amber.shade300,
          onPressed: _showdialog,
          child: const Text('Alert Dailog'),
        ),
      ),
    );
  }
}
