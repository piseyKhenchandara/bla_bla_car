import 'package:blabla/model/ride/locations.dart';

import '../data/dummy_data.dart';
import '../model/ride/ride.dart';

////
///   This service handles:
///   - The list of available rides
///
class RidesService {
  static List<Ride> allRides = fakeRides;

  // TODO Create a static method to filter rides by departure location

  static List<Ride> filterByDeparture(Location departureLocation) {
    return allRides
        .where((ride) => ride.departureLocation == departureLocation)
        .toList();
  }

  // TODO Create a static method to filter rides by number of requested seat

  static List<Ride> filterBySeatRequested(int seatRequested) {
    return allRides
        .where((ride) => ride.availableSeats >= seatRequested)
        .toList();
  }

  // TODO Create a static method to filter : optional departure location, optional requested seat

  List<Ride> filterby({Location? departure, int? seatRequested}) {
    List<Ride> result = allRides;

    if (departure != null) {
      result = result
          .where((ride) => ride.departureLocation == departure)
          .toList();
    }

    if (seatRequested != null) {
      result = result
          .where((ride) => ride.remainingSeats >= seatRequested)
          .toList();
    }

    return result;
  }
}
