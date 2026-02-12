import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lossless/app/screens/player.dart';
import 'package:lossless/app/screens/playlists.dart';
import 'package:lossless/app/screens/queue.dart';
import 'package:lossless/app/screens/search.dart';
import 'package:lossless/app/screens/settings.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistentBottomNavBar extends StatelessWidget {
  const PersistentBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle style = GoogleFonts.inter(
      fontSize: 12,
      fontWeight: .w700,
      color: Theme.of(context).colorScheme.onSurface,
    );
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: PlayerPage(),
          item: ItemConfig(
            icon: Icon(Iconsax.play),
            title: "Player",
            textStyle: style,
          ),
        ),
        PersistentTabConfig(
          screen: QueuePage(),
          item: ItemConfig(
            icon: Icon(Iconsax.cd),
            title: "Queue",
            textStyle: style,
          ),
        ),
        PersistentTabConfig(
          screen: SearchPage(),
          item: ItemConfig(
            icon: Icon(Iconsax.search_normal),
            title: "Search",
            textStyle: style,
          ),
        ),
        PersistentTabConfig(
          screen: PlaylistsPage(),
          item: ItemConfig(
            icon: Icon(Iconsax.music_playlist),
            title: "Playlist",
            textStyle: style,
          ),
        ),
        PersistentTabConfig(
          screen: SettingsPage(),
          item: ItemConfig(
            icon: Icon(Iconsax.setting_4),
            title: "Settings",
            textStyle: style,
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      stateManagement: true,
      gestureNavigationEnabled: true,
      avoidBottomPadding: true,
      hideNavigationBar: false,
      handleAndroidBackButtonPress: true,
      keepNavigatorHistory: true,
      resizeToAvoidBottomInset: true,

      navBarBuilder: (navBarConfig) => Style8BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
