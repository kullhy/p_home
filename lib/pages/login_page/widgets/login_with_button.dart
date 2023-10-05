import 'package:flutter/material.dart';
import 'package:p_home/common/app_text_styles.dart';

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({
    super.key,
    required this.image,
    required this.content,
  });
  final String image;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
          border: Border.all(
              color: content == "Facebook"
                  ? const Color(0xff3b5999)
                  : const Color.fromARGB(255, 255, 137, 137)),
          borderRadius: BorderRadius.circular(25),
          color: content == "Facebook"
              ? const Color(0xff3b5999)
              : const Color.fromARGB(255, 252, 152, 152)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 52,
            ),
            Image.asset(
              image,
              height: 14,
            ),
            const SizedBox(
              width: 10,
            ),
            Text("Continue with $content",
                style: content == "Facebook"
                    ? AppTextStyle.whiteS16Bold
                    : AppTextStyle.blackS16Bold),
          ],
        ),
      ),
    );
  }
}
