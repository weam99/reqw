import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/Utils/assets_manager.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => SvgPicture.asset(
        ImageAssets.star,
        colorFilter: const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
