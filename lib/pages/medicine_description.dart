import 'package:flutter/material.dart';

class MedicineDescriptionPage extends StatelessWidget {
  const MedicineDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine Description'),
      ),
      body: const Center(
        child: Text('Medicine Description Page'),
      ),
    );
  }
}
