import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_login/SignUp/presentation/widgets/app_bar_login.dart';
import 'package:travel_login/SignUp/presentation/widgets/text_field.dart';
import 'package:travel_login/utils/constants.dart';

void main() {
  runApp(ProfileBlank());
}

class ProfileBlank extends StatefulWidget {
  const ProfileBlank({super.key});

  @override
  State<ProfileBlank> createState() => _ProfileBlankState();
}

class _ProfileBlankState extends State<ProfileBlank> {
  final List<String> regions = [
    'Jizzax',
    "Samarkand",
    'Toshkent',
    'Sirdaryo',
    'Namangan',
    "Farg'ona",
    'Andijon',
    'Buxoro',
    'Xorazim',
    'Qashqadaryo',
    'Navoiy',
    'Surxondaryo',
    "Qoraqalpog'iston"
  ];

  String? selectedRegion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLogin(text: "Ma'lumotlaringizni kiriting"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    radius: 70,
                    child: Icon(
                      Icons.person,
                      color: Colors.grey.withOpacity(0.5),
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFieldItem(text: "Ismingiz"),
                SizedBox(height: 10),
                TextFieldItem(text: "Familyangiz"),
                SizedBox(height: 10),
                TextFieldItem(text: "+998 88 106-01-24"),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.TextFieldColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text("Viloyatlar",
                      style: TextStyle(color: Colors.grey.withValues(alpha: 0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),),
                      value: selectedRegion,
                      items: regions.map((String region) {
                        return DropdownMenuItem<String>(
                          value: region,
                          child: Text(region),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedRegion = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.go('/entry_blank');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.TextGreen),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(
                      Size(400, 58),
                    ),
                  ),
                  child: Text(
                    "Saqlash",
                    style: TextStyle(
                        color : Colors.white,
                        fontSize: 16,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
