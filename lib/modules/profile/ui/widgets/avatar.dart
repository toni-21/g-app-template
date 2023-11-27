import 'package:flutter/material.dart';

typedef OnAvatarTap = void Function();

class UserAvatar extends StatelessWidget {
  final OnAvatarTap? onTap;
  final double? radius;
  final String? avatarUrl;

  const UserAvatar({
    super.key,
    this.onTap,
    this.radius,
    this.avatarUrl,
  });

  factory UserAvatar.fromUrl({
    required String url,
    OnAvatarTap? onTap,
    double? radius,
  }) =>
      UserAvatar(
        onTap: onTap,
        avatarUrl: url,
        radius: radius,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: avatarUrl == null ? 0.6 : 1,
        child: Builder(builder: (context) {
          switch (hasUrl) {
            case (true):
              return CircleAvatar(
                radius: radius ?? 48,
                backgroundImage: NetworkImage(avatarUrl!),
              );
            case (false):
              return CircleAvatar(
                radius: radius ?? 48,
                backgroundColor: Colors.blueGrey.withOpacity(0.1),
                child: const Icon(Icons.person, size: 48),
              );
          }
        }),
      ),
    );
  }

  bool get hasUrl => avatarUrl != null && avatarUrl!.isNotEmpty;
}
