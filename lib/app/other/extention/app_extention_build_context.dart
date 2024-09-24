part of 'extention_export.dart';

extension AppExtentionBuildContext on BuildContext {
  T responsive<T>(T defaultVal, {T? xs, T? sm, T? md, T? lg, T? xl, T? xxl}) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= ScreenMediaType.xxl.width
        ? (xxl ?? xl ?? lg ?? md ?? sm ?? xs ?? defaultVal)
        : wd >= ScreenMediaType.xl.width
            ? (xl ?? lg ?? md ?? sm ?? xs ?? defaultVal)
            : wd >= ScreenMediaType.lg.width
                ? (lg ?? md ?? sm ?? xs ?? defaultVal)
                : wd >= ScreenMediaType.md.width
                    ? (md ?? sm ?? xs ?? defaultVal)
                    : wd >= ScreenMediaType.sm.width
                        ? (sm ?? xs ?? defaultVal)
                        : wd >= ScreenMediaType.xs.width
                            ? (xs ?? defaultVal)
                            : defaultVal;
  }

  double get appMargin {
    return Const.margin;
  }

  double get appParrentMargin {
    return Const.parrentMargin;
  }

  double get appSize {
    return Const.margin;
  }
}

enum ScreenMediaType {
  xs(576), //Mobile
  sm(768), //Tablet
  md(1200), //Laptop
  lg(1400), //Desktop
  xl(1800), //Large Desktop
  xxl(4000); //Extra Large Desktop

  bool get isMobile => this == ScreenMediaType.xs;

  bool get isTablet => this == ScreenMediaType.sm;

  bool get isLaptop => this == ScreenMediaType.md;

  bool get isMiniDesktop => this == ScreenMediaType.lg;

  bool get isDesktop => this == ScreenMediaType.xl;

  const ScreenMediaType(this.width);

  final double width;
}
