import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/login/presentation/pages/login_page.dart';
import 'package:mady/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:mady/features/profile/presentation/cubit/profile_state.dart';
import 'package:mady/features/profile/presentation/widgets/more_card_item.dart';
import 'package:mady/features/user/domain/entities/user.dart';

class ProfilePage extends StatelessWidget {
  static const id = 'ProfilePage';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('حساب کاربری'),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.purple.shade800,
          automaticallyImplyLeading: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
        ),
        body: BlocProvider<ProfileCubit>(
          create: (context) => getIt<ProfileCubit>()..getUser(),
          child: BlocConsumer<ProfileCubit, ProfileState>(
            listener: cubitListener,
            builder: cubitBuilder,
          ),
        ));
  }

  void cubitListener(context, state) {
    state.whenOrNull(
      loadedWithError: ((user, message) => showSnackbar(
            context,
            message: message,
          )),
      logout: () => Navigator.pushNamedAndRemoveUntil(
          context, LoginPage.id, (route) => false),
    );
  }

  Widget cubitBuilder(context, state) => state.when(
        initial: (() => const Center()),
        loading: buildLoading,
        loaded: (user) => buildBody(context, user),
        loadedWithError: (user, error) => buildBody(context, user),
        error: (error) => buildError(context, error),
        logout: () => const Center(),
      );

  Widget buildError(BuildContext context, String message) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 10),
            TextButton(
              child: const Text('تلاش مجدد'),
              onPressed: () => context.read<ProfileCubit>().getUser(),
            ),
          ],
        ),
      );

  Widget buildBody(BuildContext context, User user) => Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'جزئیات',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                ),
                MoreCardItem(
                  title: 'نام',
                  subtitle: user.name,
                  onTap: () => log('open change name dialog'),
                ),
                MoreCardItem(
                  title: 'شماره موبایل',
                  subtitle: user.phone,
                ),
                MoreCardItem(
                  title: 'ایمیل',
                  subtitle: user.email,
                  onTap: () => log('open change enail dialog'),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'تنظیمات',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                ),
                MoreCardItem(
                  title: 'نوتیفیکیشن ها',
                  onTap: () => log('open notif dialog'),
                ),
                MoreCardItem(
                  title: 'تغییر رمز عبور',
                  onTap: () => log('open change enail dialog'),
                )
              ],
            ),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                'تغییر رمز عبور',
                style: TextStyle(color: Colors.yellow.shade800),
              )),
          TextButton(
              onPressed: () => context.read<ProfileCubit>().logout(user),
              child: Text(
                'خروج از حساب کاربری',
                style: TextStyle(color: Colors.red.shade800),
              )),
          const SizedBox(height: 20),
        ],
      );

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(
          color: Colors.purple.shade800,
        ),
      );
}
