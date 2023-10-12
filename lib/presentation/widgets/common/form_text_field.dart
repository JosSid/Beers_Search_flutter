import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {

  final ValueChanged<String> onValue;


   const FormTextField({super.key, required this.onValue});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {

  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'Search',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      prefixIcon: const Icon(Icons.search_outlined),
      suffixIcon:IconButton(
        icon: const Icon(Icons.cleaning_services_outlined),
        onPressed: () { 
          textController.clear();
          widget.onValue('');
           },)
    );

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: textController,
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        decoration: inputDecoration,
        onChanged: (value) {
          widget.onValue(value);
        },
      ),
    );
  }
}