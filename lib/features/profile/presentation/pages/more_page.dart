import 'package:flutter/material.dart';
import 'package:mady/features/profile/presentation/pages/profile_page.dart';
import 'package:mady/features/profile/presentation/widgets/more_card_item.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MoreCardItem(
            leading: Icons.person_rounded,
            title: 'حساب کاربری',
            onTap: () => Navigator.pushNamed(context, ProfilePage.id),
          ),
          const MoreCardItem(
            leading: Icons.text_snippet,
            title: 'وبلاگ',
          ),
          const MoreCardItem(
            leading: Icons.privacy_tip_rounded,
            title: 'حریم خصوصی',
          ),
          const MoreCardItem(
            leading: Icons.rule_sharp,
            title: 'شرایط و قوانین',
          ),
          const MoreCardItem(
            leading: Icons.question_answer_rounded,
            title: 'راهنمایی',
          ),
          const MoreCardItem(
            leading: Icons.info_rounded,
            title: 'درباره ما',
          ),
        ],
      ),
    );
  }
}
