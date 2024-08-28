import 'package:flutter/material.dart';

class TextFromGlobal extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final TextInputType textInputType;
  final bool obscure;
  final Icon icon;

  const TextFromGlobal({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.textInputType,
    required this.obscure,
    required this.icon,
  });

  @override
  _TextFromGlobalState createState() => _TextFromGlobalState();
}

class _TextFromGlobalState extends State<TextFromGlobal> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.textInputType,
            obscureText: widget.obscure ? _isObscure : false,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.white70),
              icon: widget.icon,
              iconColor: Colors.white,
              border: InputBorder.none,
              suffixIcon: widget.obscure
                  ? IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
