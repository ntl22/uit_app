import 'package:flutter/material.dart';

class IsDevelopingDialogue extends StatelessWidget {
  const IsDevelopingDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning dialog'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const [
            Text('The feature is in the developing process!'),
            Text('Please return later...')
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))
      ],
    );
  }
}

class EndOfNewsDialogue extends StatelessWidget {
  const EndOfNewsDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning dialog'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const [
            Text('End of news!'),
            Text('Please return later...')
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))
      ],
    );
  }
}
