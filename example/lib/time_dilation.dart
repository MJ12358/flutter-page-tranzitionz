import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class TimeDilationButton extends StatelessWidget {
  const TimeDilationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.timelapse),
      onPressed: () => showDialog(
        context: context,
        builder: (_) => const _Modal(),
      ),
    );
  }
}

class _Modal extends StatefulWidget {
  const _Modal();

  @override
  State<_Modal> createState() => _ModalState();
}

class _ModalState extends State<_Modal> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = timeDilation;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Time Dilation'),
      children: <Widget>[
        Slider(
          min: 1,
          max: 10,
          divisions: 9,
          label: '$_value',
          value: _value,
          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },
          onChangeEnd: (double value) => timeDilation = value,
        ),
      ],
    );
  }
}
