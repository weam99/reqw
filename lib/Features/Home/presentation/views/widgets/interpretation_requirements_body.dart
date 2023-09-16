import 'package:flutter/material.dart';

import '../../../../../Core/constant.dart';

// ignore: must_be_immutable
class InterpretationRequirementsBody extends StatelessWidget {
  InterpretationRequirementsBody({super.key});
  TextEditingController datetextEditingController = TextEditingController();
  TextEditingController timetextEditingController = TextEditingController();
  TextEditingController countrytextEditingController = TextEditingController();
  TextEditingController addresstextEditingController = TextEditingController();
  TextEditingController towntextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: getHeight(context) * .62,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight * .75,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Expanded(child: TextFormField()),
                        Expanded(child: TextFormField())
                      ],
                    ),
                    TextFormField(),
                    TextFormField(),
                    Row(
                      children: [
                        Expanded(child: TextFormField()),
                        Expanded(
                          child: TextFormField(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
