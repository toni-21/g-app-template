import 'package:apparence_kit/core/data/repositories/authentication_repository.dart';
import 'package:apparence_kit/modules/profile/ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is an example of a settings page UI.
/// All data are fake and hardcoded (except for the logout button)
/// You are free to use it or not.
class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // you can fetch the user state like this
    // final userState = ref.watch(userStateNotifierProvider);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 8),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Text(
              "Settings",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            const ProfileTile(
              title: "My account", // userState.user.name,
              subtitle: "johndoe@gmail.com", // userState.user.email,
            ),
            const SizedBox(height: 24),
            SettingsContainer(
              child: Wrap(
                children: [
                  SettingsTile(
                    icon: Icons.privacy_tip,
                    title: "Privacy policy",
                    onTap: () {},
                  ),
                  Divider(color: Colors.blueGrey.withOpacity(.10)),
                  SettingsTile(
                    icon: Icons.help,
                    title: "Support",
                    onTap: () {},
                  ),
                  Divider(color: Colors.blueGrey.withOpacity(.10)),
                  SettingsTile(
                    icon: Icons.logout,
                    title: "Disconnect",
                    onTap: () {
                      ref.read(authRepositoryProvider.notifier).logout();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

typedef SettingsTileOnTap = void Function();

class SettingsContainer extends StatelessWidget {
  final Widget child;

  const SettingsContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blueGrey.withOpacity(0.05),
        // color: Theme.of(context).colorScheme.surface,
      ),
      child: child,
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imagePath;

  const ProfileTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        children: [
          const UserAvatar(
            radius: 32,
            avatarUrl: "https://i.pravatar.cc/300",
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.blueGrey.shade900,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.blueGrey.shade800,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final SettingsTileOnTap onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 21,
              color: Colors.blueGrey.shade800,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
