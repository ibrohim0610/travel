import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_login/SignUp/presentation/widgets/app_bar_login.dart';
import 'package:travel_login/utils/constants.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _EnterTheCodeState();
}

class _EnterTheCodeState extends State<CreatePin> {
  final TextEditingController controller = TextEditingController();

  String text = "Sms kodni kiriting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLogin(
        text: "Kodni kiriting",

      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          spacing: 80,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.TexTColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            Pinput(
              controller: controller,
              obscureText: true,
              length: 4,
              defaultPinTheme: PinTheme(
                width: 83,
                height: 61,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withValues(alpha: 0.4),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.TextGreen),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(
                  Size(380, 58),
                ),
              ),
              onPressed: () {
                if (controller.text == "0610") {
                  context.go('/profile_blank');
                } else {
                  setState(() {});
                  text = "Kodni to'gri kiriting!";
                }
              },
              child: Text(
                "Tasdiqlash",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}