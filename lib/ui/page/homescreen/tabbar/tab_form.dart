import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tk2/provider/home_provider.dart';

class TabForm extends StatelessWidget {
  const TabForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              context.read<HomeProvider>().updateData(
                    name: '${value}',
                  );
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Whats your hobby?',
              labelText: 'Hobby *',
            ),
            onSaved: (String? value) {
              context.read<HomeProvider>().updateData(
                    hobby: value,
                  );
            },
          ),
          const SizedBox(
            height: 12.0,
          ),
          ElevatedButton(
            child: const Text('Simpan'),
            onPressed: () {
              formKey.currentState?.save();
            },
          )
        ],
      ),
    );
  }
}
