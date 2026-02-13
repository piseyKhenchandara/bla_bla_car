import 'package:blabla/ui/widgets/actions/bla_button.dart';
import 'package:flutter/material.dart';

class RidesPreferencesScreen extends StatefulWidget {
  const RidesPreferencesScreen({super.key});

  @override
  State<RidesPreferencesScreen> createState() => _RidesPreferencesScreenState();
}

class _RidesPreferencesScreenState extends State<RidesPreferencesScreen> {
  void _onPressed() {
    // Your button action here
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image(image: AssetImage('assets/images/blabla_home.png')),
        ),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlaButton(
                text: "hello ronan",
                isPrimary: true,
                onPressed: _onPressed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
