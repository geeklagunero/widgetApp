import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  //const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text('Circular progress indicator'),
          const SizedBox(
            height: 15,
          ),
          CircularProgressIndicator(
            strokeWidth: 4,
            backgroundColor: Colors.black45,
          ),
          const SizedBox(
            height: 30,
          ),
          Text('Circular progress indicator controlado'),
          const SizedBox(
            height: 15,
          ),
          _ControllerProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  //const _ControllerProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
