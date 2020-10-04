import 'package:flutter/material.dart';

import '../material_themes_manager.dart';

abstract class ThemeGroup {

  ColorPalette colorPalette = ColorPalette();

  void updateColorPalette(ColorPalette colorPalette) {
    this.colorPalette = colorPalette;
  }
  
  Widget backgroundGradient(
    BackgroundGradientType type,
    AlignmentGeometry begin,
    AlignmentGeometry end,
    List<double> stops,
    List<double> opacities,
    TileMode tileMode,
    GradientTransform transform) {

    if (type == BackgroundGradientType.MAIN_BG) {
      return mainBackgroundGradient(begin, end, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.MAIN_FG) {
      return mainForegroundGradient(begin, end, stops, opacities, tileMode, transform);
    } else if (type == BackgroundGradientType.PRIMARY) {
      return primaryGradient(begin, end, stops, opacities, tileMode, transform);
    } else {
      return secondaryGradient(begin, end, stops, opacities, tileMode, transform);
    }
  }

  ThemeData theme(ThemeGroupType themeGroupType, {Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    if(themeGroupType == ThemeGroupType.MOM) {
      return mainOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POM) {
      return primaryOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOM) {
      return secondaryOnMain(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOP) {
      return mainOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POP) {
      return primaryOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOP) {
      return secondaryOnPrimary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOS) {
      return mainOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POS) {
      return primaryOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.SOS) {
      return secondaryOnSecondary(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.MOI) {
      return mainOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else if (themeGroupType == ThemeGroupType.POI) {
      return primaryOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    } else {
      return secondaryOnImage(emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
    }
  }

  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL});

  Widget mainBackgroundGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget mainForegroundGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget primaryGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);
  Widget secondaryGradient(AlignmentGeometry begin, AlignmentGeometry end, List<double> stops, List<double> opacities, TileMode tileMode, GradientTransform transform);

  /*Widget mainRadialBackgroundGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget mainRadialForegroundGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget primaryRadialGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget secondaryRadialGradient({double beginOpacity = 1.0, double endOpacity = 1.0});

  Widget mainSweepBackgroundGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget mainSweepForegroundGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget primarySweepGradient({double beginOpacity = 1.0, double endOpacity = 1.0});
  Widget secondarySweepGradient({double beginOpacity = 1.0, double endOpacity = 1.0});*/

  FontWeight getFontWeight(Emphasis emphasis) {
    switch(emphasis) {
      case Emphasis.HIGH:
        return FontWeight.bold;//w700
      case Emphasis.MEDIUM:
        return FontWeight.w600;
      case Emphasis.LOW:
        return FontWeight.w500;
      default:
        return FontWeight.normal;//w400
    }
  }

  double getIconSize(IconSize size) {
    switch(size) {
      case IconSize.LARGE:
        return 48;
      case IconSize.MEDIUM:
        return 36;
      case IconSize.SMALL:
        return 24;
      default:
        return 18;
    }
  }

  double getElevation(ElevationLevel elevation) {
    switch(elevation) {
      case ElevationLevel.EXTREME:
        return 24;
      case ElevationLevel.HIGH:
        return 12;
      case ElevationLevel.MEDIUM:
        return 6;
      case ElevationLevel.LOW:
        return 2;
      default:
        return 0;
    }
  }

  double getFontSize(FontSize size) {
    switch(size) {
      case FontSize.H1:
        return 96;
      case FontSize.H2:
        return 60;
      case FontSize.H3:
        return 48;
      case FontSize.H4:
        return 34;
      case FontSize.H5:
        return 24;
      case FontSize.TITLE:
        return 20;
      case FontSize.SUB1:
        return 16;
      case FontSize.SUB2:
        return 14;
      case FontSize.BODY1:
        return 16;
      case FontSize.BODY2:
        return 14;
      case FontSize.CAPTION:
        return 12;
      default://OVERLINE
        return 10;
    }
  }

}