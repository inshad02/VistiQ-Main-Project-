import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

Widget customTextField(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff969191)),
      ),
      TextFormField(),
    ],
  );
}

Widget mobileNoField(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff969191)),
      ),
      IntlPhoneField(
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    ],
  );
}

class DropDown extends StatefulWidget {
  final String title; // The title text above the dropdown
  final String? selectedValue; // The selected value
  final List<String> items; // List of dropdown items
  final ValueChanged<String?>? onChanged; // Callback when the value changes

  const DropDown({
    super.key,
    required this.title,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
  });

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title, // Using the passed title
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff969191)),
        ),
        DropdownButton<String>(
          underline: Container(
            height: 0.7,
            color: Colors.black,
          ),
          isExpanded: true,
          value: widget.selectedValue, // The selected value passed from parent
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: widget.onChanged, // Use the passed onChanged callback
        ),
      ],
    );
  }
}

Widget buttons(Function() onCancel, Function() onSubmit) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      MaterialButton(
        onPressed: onCancel,
        height: 45,
        minWidth: 166,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
              color: Color.fromARGB(255, 95, 91, 91), style: BorderStyle.solid),
        ),
        child: const Text(
          "Cancel",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      MaterialButton(
        onPressed: onSubmit,
        height: 45,
        minWidth: 166,
        color: const Color(0xff5731AB),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), side: BorderSide.none),
        child: const Text(
          "Submit",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    ],
  );
}

class DatePickerTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;

  const DatePickerTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  _DatePickerTextFieldState createState() => _DatePickerTextFieldState();
}

class _DatePickerTextFieldState extends State<DatePickerTextField> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        widget.controller.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff969191)),
        ),
        TextFormField(
          controller: widget.controller,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () => _selectDate(context),
                icon: const Icon(Icons.calendar_today)),
            hintText: 'Select date',
          ),
        ),
      ],
    );
  }
}

class TimePickerTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;

  const TimePickerTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  _TimePickerTextFieldState createState() => _TimePickerTextFieldState();
}

class _TimePickerTextFieldState extends State<TimePickerTextField> {
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        final now = DateTime.now();
        final selectedTime =
            DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
        widget.controller.text = DateFormat('HH:mm').format(selectedTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff969191)),
        ),
        TextFormField(
          controller: widget.controller,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () => _selectTime(context),
                icon: Icon(Icons.access_time)),
            hintText: 'Select time',
          ),
        ),
      ],
    );
  }
}
