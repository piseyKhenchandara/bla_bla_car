import 'package:blabla/ui/theme/theme.dart';
import 'package:blabla/ui/widgets/actions/bla_button.dart';
import 'package:blabla/ui/widgets/display/ride_pref/ride_pref_form.dart';
import 'package:flutter/material.dart';

class RidesPreferencesScreen extends StatefulWidget {
  const RidesPreferencesScreen({super.key});

  @override
  State<RidesPreferencesScreen> createState() => _RidesPreferencesScreenState();
}

class _RidesPreferencesScreenState extends State<RidesPreferencesScreen> {
  void _onPressed() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/blabla_home.png'),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(child: Container()), // Fill the rest with empty space
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Your pick of rides at low price",
            style: TextStyle(color: BlaColors.white, fontSize: BlaTextStyles.heading.fontSize),
          textAlign : TextAlign.center,
          ),
        ),
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RidePrefForm(),
            ),
          ),
        ),
      ],
    );
  }
}
