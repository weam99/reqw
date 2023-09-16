import 'package:flutter/material.dart';

import '../../../../../Core/Widget/CustomAppBar.dart';
import '../../../../Terms&Privacy%20policy/presentation/view/Widget/TermsPrivacyPolicyAppBarContent.dart';

class TermsPrivacyPolicyBody extends StatelessWidget {
  const TermsPrivacyPolicyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarNotification(
          content: TermsPrivacyPolicyAppBarContent(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien. Vestibulum malesuada orci sit amet pretium facilisis. In lobortis congue augue, a commodo libero tincidunt scelerisque. Donec tempus congue lacinia. Phasellus lacinia felis est, placerat commodo odio tincidunt iaculis. Sed felis magna, iaculis a metus id, ullamcorper suscipit nulla. Fusce facilisis, nunc ultricies posuere porttitor, nisl lacus tincidunt diam, vel feugiat nisi elit id massa. Proin nulla augue, dapibus non justo in, laoreet commodo nunc. Maecenas faucibus neque in nulla mollis interdum. Quisque quis pellentesque enim, vitae pulvinar purus. Quisque vitae suscipit risus. Curabitur scelerisque magna a interdum pretium. Integer sodales metus ut placerat viverra. Curabitur accumsan, odio quis vehicula imperdiet, tellus ex venenatis nisl, a dignissim lectus augue tincidunt arcu.",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500, height: 1.5),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis nunc a molestie dictum. Mauris venenatis, felis scelerisque aliquet lacinia, nulla nisi venenatis odio, id blandit mauris ipsum id sapien. Vestibulum malesuada orci sit amet pretium facilisis. In lobortis congue augue, a commodo libero tincidunt scelerisque. Donec tempus congue lacinia. Phasellus lacinia felis est, placerat commodo odio tincidunt iaculis. Sed felis magna, iaculis a metus id, ullamcorper suscipit nulla. Fusce facilisis, nunc ultricies posuere porttitor, nisl lacus tincidunt diam, vel feugiat nisi elit id massa. Proin nulla augue, dapibus non justo in, laoreet commodo nunc. Maecenas faucibus neque in nulla mollis interdum. Quisque quis pellentesque enim, vitae pulvinar purus. Quisque vitae suscipit risus. Curabitur scelerisque magna a interdum pretium. Integer sodales metus ut placerat viverra. Curabitur accumsan, odio quis vehicula imperdiet, tellus ex venenatis nisl, a dignissim lectus augue tincidunt arcu.",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500, height: 1.5),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
