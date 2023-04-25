class NavigationConfigs {
  bool showAppBar;
  bool showAppBarBackButton;
  bool showNavBar;

  NavigationConfigs({
    required this.showAppBar,
    required this.showAppBarBackButton,
    required this.showNavBar,
  });

  NavigationConfigs copyWith({
    bool? showAppBar,
    bool? showAppBarBackButton,
    bool? showNavBar,
    String? title,
    String? subtitle,
  }) =>
      NavigationConfigs(
        showAppBar: showAppBar ?? this.showAppBar,
        showAppBarBackButton: showAppBarBackButton ?? this.showAppBarBackButton,
        showNavBar: showNavBar ?? this.showNavBar,
      );
}