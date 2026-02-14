import 'package:blabla/model/ride/locations.dart';
import 'package:blabla/ui/screens/Location_picker_screen.dart';

import 'package:blabla/ui/theme/theme.dart';
import 'package:blabla/ui/widgets/actions/bla_button.dart';
import 'package:blabla/ui/widgets/display/bla_divider.dart';
import 'package:blabla/ui/widgets/display/ride_pref/ride_form_tile.dart';
import 'package:flutter/material.dart';

class RidePrefForm extends StatefulWidget {
  const RidePrefForm({super.key});

  @override
  State<RidePrefForm> createState() => _RidePrefFormState();
}

class _RidePrefFormState extends State<RidePrefForm> {
  Location? departure;
  late DateTime departureDate = DateTime.now(); // <-- Initialize here
  Location? arrival;
  late int requestedSeats = 1; // <-- Also initialize requestedSeats if needed

  @override
  void initState() {
    super.initState();
    // Optionally, you can also initialize here:
    // departureDate = DateTime.now();
    // requestedSeats = 1;
  }

  void onSearched() {}

  Future<void> onSelectDeparture() async {
    final selectedLocation = await Navigator.push<Location>(
      context,
      MaterialPageRoute(builder: (context) => LocationPickerScreen()),
    );

    if (selectedLocation != null) {
      setState(() {
        departure = selectedLocation;
      });
    }
  }

  void onSelectArrival() async {
    final selectedLocation = await Navigator.push<Location>(
      context,
      MaterialPageRoute(builder: (context) => LocationPickerScreen()),
    );

    if (selectedLocation != null) {
      setState(() {
        arrival = selectedLocation;
      });
    }
  }

  void pickDate() {}

  void pickSeats() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        RideFormTile(
          firstIcon: Icons.location_on,
          text: departure?.toString() ?? "",
          hintText: "Leaving from",
          onPressed: onSelectDeparture,
          isTopField: true,
        ),
        BlaDivider(),
        RideFormTile(
          firstIcon: Icons.location_on,
          text: arrival?.toString() ?? "",
          hintText: "Going to",
          onPressed: onSelectArrival,
        ),
        BlaDivider(),
        RideFormTile(
          firstIcon: Icons.calendar_month,
          text: departureDate.toString(), // Format as needed
          onPressed: pickDate,
        ),
        BlaDivider(),
        RideFormTile(
          firstIcon: Icons.person,
          text: requestedSeats.toString(), // Format as needed
          onPressed: pickSeats,
        ),
        BlaButton(onPressed: onSearched, text: "Search", isPrimary: true),
      ],
    );
  }
}
