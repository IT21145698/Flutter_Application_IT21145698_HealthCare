import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime today = DateTime.now();
  int? selectedTimeSlot;
  List<String> morningTimeSlots = [
    "9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "1:00 PM",
    "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM", "6:00 PM",
    "7:00 AM", "8:00 AM", "9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM",
  ];
  List<String> eveningTimeSlots = [
    "7:00 PM", "8:00 PM", "9:00 PM", "10:00 PM", "11:00 PM", "12:00 AM",
    "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM", "5:00 PM",
    "6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM", "10:00 AM",
  ];
  bool isMorning = true;

  ElevatedButton buildTimeSlotButton(int index, String timeSlot) {
    return ElevatedButton(
      onPressed: () {
        _onTimeSlotSelected(index);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedTimeSlot == index
            ? const Color.fromRGBO(53, 121, 159, 1) // Dark blue color
            : const Color.fromRGBO(126, 174, 191, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        elevation: 0.0,
      ),
      child: Text(
        timeSlot,
        style: const TextStyle(fontSize: 11, color: Colors.white),
      ),
    );
  }

  ElevatedButton buildToggleButton(bool isMorningButton) {
    final isCurrent = isMorningButton == isMorning;

    return ElevatedButton(
      onPressed: () {
        if (isMorningButton && !isMorning) {
          _onMorningButtonPressed();
        } else if (!isMorningButton && isMorning) {
          _onEveningButtonPressed();
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isCurrent ? const Color.fromRGBO(53, 121, 159, 1) : Colors.white,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          isCurrent ? Colors.white : Colors.black,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
      ),
      child: Row(
        children: [
          Icon(
            isMorningButton ? Icons.wb_sunny : Icons.nightlight_round,
            color: isCurrent ? Colors.white : const Color.fromRGBO(140, 143, 165, 1),
          ),
          const SizedBox(width: 8),
          Text(
            isMorningButton ? "Morning" : "Evening",
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make text bold
              color: isCurrent ? Colors.white : const Color.fromRGBO(140, 143, 165, 1),
            ),
          ),
        ],
      ),
    );
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      selectedTimeSlot = null;

      if (day.weekday == DateTime.saturday || day.weekday == DateTime.sunday) {
        _showWeekendDialog();
      }
    });
  }

  void _showWeekendDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Not Available"),
          content: const Text("Selected day is a weekend and not available for appointments."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  void _onTimeSlotSelected(int index) {
    setState(() {
      selectedTimeSlot = index;
    });
  }

  void _showSelectDateAndTimeSlotMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Missing Selection"),
          content: const Text("Please select both a date and a time slot to make an appointment."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  void _showAppointmentConfirmationDialog() {
    if (selectedTimeSlot != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Appointment Successful"),
            content: const Text("You have successfully made an appointment."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Okay"),
              ),
            ],
          );
        },
      );
    } else {
      _showSelectDateAndTimeSlotMessage();
    }
  }

  void _onMorningButtonPressed() {
    setState(() {
      isMorning = true;
      selectedTimeSlot = null;
    });
  }

  void _onEveningButtonPressed() {
    setState(() {
      isMorning = false;
      selectedTimeSlot = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Row(
            children: [
              SizedBox(
                width: 65.0, // Adjust the width as needed
              ),
              Text(
                "AppBar 2023",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set the title color to black
                ),
              ),
            ],
          ),
          leading: Container(
            /*decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),*/
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Handle back button press here
              },
              iconSize: 25.0,
            ),
          ),
          actions: const [],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              rowHeight: 40,
              headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime(2023, 8, 1),
              lastDay: DateTime(2023, 11, 30),
              onDaySelected: _onDaySelected,
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                outsideTextStyle: TextStyle(
                  color: Colors.grey[200],
                ),
                todayDecoration: const BoxDecoration(
                  color: Color.fromRGBO(53, 121, 159, 0.5), // Change today's date color to green
                  shape: BoxShape.circle, // Change today's date shape to a circle
                ),
                selectedDecoration: const BoxDecoration(
                  color: Color.fromRGBO(53, 121, 159, 1), // Change the selection color to red
                  shape: BoxShape.circle, // Change the shape to a circle
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(126, 174, 191, 1),
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildToggleButton(true),
                      const SizedBox(width: 20),
                      buildToggleButton(false),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Please select the time slot",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 100 / 60, // Increase the height of the time slot buttons
                    ),
                    shrinkWrap: true,
                    itemCount: isMorning ? morningTimeSlots.length : eveningTimeSlots.length,
                    itemBuilder: (context, index) {
                      final timeSlot = isMorning ? morningTimeSlots[index] : eveningTimeSlots[index];
                      return buildTimeSlotButton(index, timeSlot);
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 320,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedTimeSlot != null) {
                          _showAppointmentConfirmationDialog();
                        } else {
                          _showSelectDateAndTimeSlotMessage();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: const Text("Make Appointment", style: TextStyle(color: Color.fromRGBO(28, 107, 164, 1))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

