class AppImages {
  static final AppImages _images = AppImages._internal();

  factory AppImages() => _images;

  AppImages._internal();

  final basePath = 'images/';

  // Widget imageLogo({bool? darkMode, double? size, Color? color}) =>
  //     SvgPicture.asset(
  //       '${basePath}logo_${(darkMode ?? app.darkThemeEnabled) ? 'dark' : 'light'}.svg',
  //       width: size,
  //       height: size,
  //       color: color,
  //     );
}
