import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    this.onChanged,
    this.autoFocus = false,
    Key? key,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black54,
        ),
        fillColor: Colors.white12,
        filled: true,
      ),
    );
  }
}
