class AppIcons {
  static final AppIcons _icons = AppIcons._internal();

  factory AppIcons() => _icons;

  AppIcons._internal();

  final basePath = 'icons';

// Widget takeaway({double? width, double? height, Color? color}) =>
//     SvgPicture.asset('$basePath/ico_takeaway.svg',
//         width: width, height: height, color: color);
}
