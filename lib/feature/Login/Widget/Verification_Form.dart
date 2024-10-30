import 'package:flutter/material.dart';
import 'package:shagaf/core/widget/authentication_button.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  _VerificationFormState createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _controllers = List.generate(6, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(6, (index) {
              return SizedBox(
                width: 40,
                child: TextFormField(
                  controller: _controllers[index],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.length == 1 && index < 5) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                ),
              );
            }),
          ),
          const SizedBox(height: 40,),

        ],
      ),
    );
  }
}
