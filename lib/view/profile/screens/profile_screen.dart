import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/profile/widgets/log_out_button.dart';
import 'package:movie_stream/view/profile/widgets/profile_tile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg'),
                            )),
                        AppSpacing.w20,
                        Column(
                          children: [
                            const Text(
                              'Ferodosa Alex',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            AppSpacing.h5,
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.military_tech,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    'Premium',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: AppColor.secondary, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                      ),
                    )
                  ],
                ),
                AppSpacing.h20,
                const Text(
                  'Your Activities',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const ProfileTileWidget(
                  title: 'Boookmark List',
                  icon: Icons.bookmark,
                  trailing: '16',
                  isBackButtonEnable: false,
                ),
                const ProfileTileWidget(
                  title: 'Reviews',
                  icon: Icons.message,
                  trailing: '512',
                  isBackButtonEnable: false,
                ),
                const ProfileTileWidget(
                  title: 'History',
                  icon: Icons.history,
                  trailing: '>',
                  isBackButtonEnable: true,
                ),
                const ProfileTileWidget(
                  title: 'History',
                  icon: Icons.history,
                  trailing: '>',
                  isBackButtonEnable: true,
                ),
                AppSpacing.h20,
                const Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const ProfileTileWidget(
                  title: 'Settings',
                  icon: Icons.settings,
                  trailing: '>',
                  isBackButtonEnable: true,
                ),
                const ProfileTileWidget(
                  title: 'Subscription',
                  icon: Icons.payments_outlined,
                  trailing: '>',
                  isBackButtonEnable: true,
                ),
                const ProfileTileWidget(
                  title: 'Change Password',
                  icon: Icons.lock,
                  trailing: '>',
                  isBackButtonEnable: true,
                ),
                const LogOutButton(),
                AppSpacing.h10,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
