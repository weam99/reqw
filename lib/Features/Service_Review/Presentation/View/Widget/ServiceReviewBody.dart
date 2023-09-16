import 'package:flutter/material.dart';
import 'package:rgb_academy/Features/Service_Review/Presentation/View/Widget/comment_text_field.dart';

import '../../../../../Core/Widget/CustomAppBar.dart';
import 'DocumentaryTranslation.dart';
import 'PublishReviewContainer.dart';
import 'RateOurService.dart';
import 'Rating-Bar.dart';
import 'ServiceReviewAppbarContent.dart';

class ServiceReviewBody extends StatelessWidget {
  const ServiceReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: Column(
        children: [
          const AppBarNotification(content: ServiceReviewAppbarContent()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const RateOurService(),
                  const SizedBox(height: 24),
                  Material(
                    elevation: .1,
                    borderRadius: BorderRadius.circular(8),
                    child: const DocumentaryTranslation(),
                  ),
                  const SizedBox(height: 40),
                  const Center(child: RatingBarWidget()),
                  const SizedBox(height: 24),
                  const CommentTextField(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          const PublishReviewContainer()
        ],
      ),
    );
  }
}
