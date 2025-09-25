import 'package:bmi_provider/screens/settings_screen.dart';
import 'package:bmi_provider/widgets/custom_gender_card.dart';
import 'package:bmi_provider/widgets/custom_height_card.dart';
import 'package:bmi_provider/widgets/custom_weight_card.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/custom_button.dart';

class BMICalculatorScreen extends StatelessWidget {
  BMICalculatorScreen({super.key});

  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Access the BMiProvider using Provider.of or context.watch
    // final bmiProvider = Provider.of<BmiProvider>(context);
    // Alternatively, for continuous listening and rebuilding:
    // final bmiProvider = context.watch<BMIModel>();

    return Scaffold(
      backgroundColor: AppColors.primaryColor2,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI FitIndex Pro",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.primaryColor2,

        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
            icon: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //gender section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomGenderCard(
                      onTap: () {},
                      isSelected: true,
                      text: 'Male',
                    ),

                    CustomGenderCard(
                      isSelected: false,
                      onTap: () {},
                      text: 'Female',
                    ),
                  ],
                ),
                SizedBox(height: 30),

                //Height section
                CustomHeightCard(),
                const SizedBox(height: 30),
                //Weight section
                CustomWeightCard(),

                // TextField(
                //   controller: _heightController,
                //   autofocus: true,
                //   decoration: InputDecoration(hintText: 'height'),
                // ),
                // SizedBox(height: 30),
                // TextField(
                //   autofocus: true,
                //   controller: _weightController,
                //   decoration: InputDecoration(hintText: 'weight'),
                // ),
                SizedBox(height: 30),

                CustomButton(
                  text: 'Calculate BMI',
                  onTap: () {
                    // final height = double.parse(_heightController.text.trim());
                    // final weight = double.parse(_weightController.text.trim());

                    // bmiProvider.calculateBMI(height, weight);
                  },
                ),

                // Text(
                //   'Height: ${bmiProvider.height.toStringAsFixed(2)} m',
                //   style: const TextStyle(fontSize: 20),
                // ),
                // Slider(
                //   value: bmiProvider.height,
                //   min: 1.0,
                //   max: 2.5,
                //   divisions: 150,
                //   // For more granular steps (2.5 - 1.0) / 0.01
                //   label: bmiProvider.height.toStringAsFixed(2),
                //   onChanged: (double value) {
                //     // Update the height in the model
                //     bmiProvider.height = value;
                //   },
                // ),
                // const SizedBox(height: 20),
                // Text(
                //   'Weight: ${bmiProvider.weight.toStringAsFixed(1)} kg',
                //   style: const TextStyle(fontSize: 20),
                // ),
                // Slider(
                //   value: bmiProvider.weight,
                //   min: 30.0,
                //   max: 150.0,
                //   divisions: 120,
                //   // (150 - 30) / 1
                //   label: bmiProvider.weight.toStringAsFixed(1),
                //   onChanged: (double value) {
                //     // Update the weight in the model
                //     bmiProvider.weight = value;
                //   },
                // ),
                // const SizedBox(height: 40),
                // if (bmiProvider.bmi != null)
                //   Column(
                //     children: [
                //       Text(
                //         'Your BMI: ${bmiProvider.bmi!.toStringAsFixed(2)}',
                //         style: const TextStyle(
                //           fontSize: 24,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       const SizedBox(height: 10),
                //       Text(
                //         'Category: ${bmiProvider.bmiCategory}',
                //         style: const TextStyle(
                //           fontSize: 20,
                //           fontStyle: FontStyle.italic,
                //         ),
                //       ),
                //     ],
                //   )
                // else
                //   Text(
                //     bmiProvider
                //         .bmiCategory, // Shows "Invalid input" if BMI is null
                //     style: const TextStyle(fontSize: 20, color: Colors.red),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
