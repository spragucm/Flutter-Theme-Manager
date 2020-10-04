library material_themes_manager;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/colors.dart';
import 'package:material_themes_manager/src/dark_theme_group.dart';
import 'package:material_themes_manager/src/light_theme_group.dart';
import 'package:material_themes_manager/src/theme_group.dart';
import 'dart:math' as math;

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class MaterialThemesManager with ChangeNotifier, DiagnosticableTreeMixin {

  bool isDarkModeEnabled = false;
  ThemeGroup _darkThemeGroup = DarkThemeGroup();
  ThemeGroup _lightThemeGroup = LightThemeGroup();
  ColorPalette _colorPalette = ColorPalette();

  updateColorPalette(ColorPalette colorPalette) {
    _darkThemeGroup.updateColorPalette(colorPalette);
    _lightThemeGroup.updateColorPalette(colorPalette);
    _colorPalette = colorPalette;
    notifyListeners();
  }

  ColorPalette colorPalette() {
    return _colorPalette;
  }
  
  void updateDarkModeEnabled(bool isDarkModeEnabled) {
    this.isDarkModeEnabled = isDarkModeEnabled;
    notifyListeners();
  }

  void toggleDarkModeEnabled() {
    this.isDarkModeEnabled = !this.isDarkModeEnabled;
    notifyListeners();
  }

  ThemeData getTheme(ThemeGroupType type, {Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL, groupThemeType}) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(type, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize) : _lightThemeGroup.theme(type, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return isDarkModeEnabled ? _darkThemeGroup.theme(ThemeGroupType.POM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize) : _lightThemeGroup.theme(ThemeGroupType.POM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryLightTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return _lightThemeGroup.theme(ThemeGroupType.MOM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeData getPrimaryDarkTheme({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return _darkThemeGroup.theme(ThemeGroupType.MOM, emphasis: emphasis, elevationLevel: elevationLevel, iconSize: iconSize);
  }

  ThemeMode getThemeMode() {
    return isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light;
  }

  Widget getBackgroundGradient(
      BackgroundGradientType type,
      {
        AlignmentGeometry begin,
        AlignmentGeometry end,
        List<double> stops,
        List<double> opacities,
        TileMode tileMode,
        GradientTransform transform
      }
  ) {
    return isDarkModeEnabled
        ? _darkThemeGroup.backgroundGradient(type, begin, end, stops, opacities, tileMode, transform)
        : _lightThemeGroup.backgroundGradient(type, begin, end, stops, opacities, tileMode, transform);
  }

  /// Makes `MaterialThemesManager` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('isDarkModeEnabled', isDarkModeEnabled.toString()));
  }
}

enum ThemeGroupType {
  MOM,  //MAIN_ON_MAIN,         //e.g  Light mode with gray text, Dark mooe with white text
  POM,  //PRIMARY_ON_MAIN,      //e.g. Light/Dark mode Primary color
  SOM,  //SECONDARY_ON_MAIN,    //e.g. Light/Dark mode secondary color
  MOP,  //MAIN_ON_PRIMARY,
  POP,  //PRIMARY_ON_PRIMARY,
  SOP,  //SECONDARY_ON_PRIMARY,
  MOS,  //MAIN_ON_SECONDARY,
  POS,  //PRIMARY_ON_SECONDARY,
  SOS,  //SECONDARY_ON_SECONDARY,
  MOI,  //MAIN_ON_IMAGE,
  POI,  //PRIMARY_ON_IMAGE,
  SOI,  //SECONDARY_ON_IMAGE
}

enum BackgroundGradientType {
  MAIN_BG,
  MAIN_FG,
  PRIMARY,
  SECONDARY
}

List<Color> _applyOpacitiesToColors(List<Color> colors, List<double> opacities) {
  var updatedColors = List<Color>();
  for(var i = 0; i < colors.length; i++) {
    var opacity = 1.0;
    if (opacities == null || opacities.length == 0) {
      //No opacity supplied, make everything visible
      opacity = 1.0;
    } else if (opacities.length == 1) {
      //Only one opacity supplied, apply to all colors
      opacity = opacities[0];
    } else if (opacities.length == colors.length) {
      //An opacity was supplied for each color; apply opacity individually
      opacity = opacities[i];
    } else {
      //A different number of colors and opacities were supplied. Interpolate.
      if (i == 0) {
        opacity = opacities[0]; //first
      } else if (i == colors.length - 1) {
        opacity = opacities[opacities.length - 1]; //last
      } else {
        var step = opacities.length * 1.0 / colors.length; //in between
        var left = (i * step).floor();
        var right = left + 1;
        opacity = (opacities[left] + opacities[right]) / 2.0;
      }
    }
    updatedColors.add(colors[i].withOpacity(opacity));
  }
  return updatedColors;
}

Widget createSweepGradient(
  List<Color> colors,
  {
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    List<double> stops,
    List<double> opacities,
    tileMode = TileMode.clamp,
    GradientTransform transform
  }
) {
  return Container(
    decoration: BoxDecoration(
      gradient: SweepGradient(
        colors: _applyOpacitiesToColors(colors, opacities),
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        stops: stops,
        tileMode: tileMode,
        transform: transform
      ),
    ),
  );
}

Widget createRadialGradient(
    List<Color> colors,
    {
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      List<double> stops,
      List<double> opacities,
      tileMode = TileMode.clamp,
      AlignmentGeometry focal,
      double focalRadius = 0.0,
      GradientTransform transform
    }
) {
  return Container(
    decoration: BoxDecoration(
      gradient: RadialGradient(
          colors: _applyOpacitiesToColors(colors, opacities),
          center: center,
          radius: radius,
          stops: stops,
          tileMode: tileMode,
          focal: focal,
          focalRadius: focalRadius,
          transform: transform
      ),
    ),
  );
}

Widget createLinearGradient(
    List<Color> colors,
    AlignmentGeometry begin,
    AlignmentGeometry end,
    List<double> stops,
    List<double> opacities,
    TileMode tileMode,
    GradientTransform transform
) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: _applyOpacitiesToColors(colors, opacities),
        begin: begin != null ? begin : Alignment.topCenter,
        end: end != null ? end : Alignment.bottomCenter,
        stops: stops,
        tileMode: tileMode != null ? tileMode : TileMode.clamp,
        transform: transform
      ),
    ),
  );
}

//https://material.io/design/environment/light-shadows.html#shadows
//https://material.io/design/environment/elevation.html
enum ElevationLevel {
  FLAT, LOW, MEDIUM, HIGH, EXTREME
}

//https://google.github.io/material-design-icons/
enum IconSize {
  MINI, SMALL, MEDIUM, LARGE
}

//https://material.io/components/buttons#hierarchy-and-placement
enum Emphasis {
  NONE, LOW, MEDIUM, HIGH
}

enum FontSize {
  H1, H2, H3, H4, H5, TITLE, SUB1, SUB2, BODY1, BODY2, CAPTION, OVERLINE
}

//The default color palette will make the app look like a wireframe
class ColorPalette {
  //Primary Colors
  Color primary;
  Color primaryAccent;

  Color primaryContrast;
  Color primaryContrastImportant;
  Color primarySecondaryContrast;
  Color primarySecondaryContrastImportant;
  
  //Secondary Colors
  Color secondary;
  Color secondaryAccent;

  Color secondaryContrast;
  Color secondaryContrastImportant;
  Color secondaryPrimaryContrast;
  Color secondaryPrimaryContrastImportant;
  
  //Light "GrayScale"
  Color lightBg;
  Color lightBgAccent;
  
  Color lightFg;
  Color lightFgAccent;
  
  Color lightContrast;
  Color lightContrastImportant;
  Color lightPrimaryContrast;
  Color lightPrimaryContrastImportant;
  Color lightSecondaryContrast;
  Color lightSecondaryContrastImportant;
  Color lightImageContrast;
  Color lightImageContrastImportant;
  
  //Dark "GrayScale"
  Color darkBg;
  Color darkBgAccent;
  
  Color darkFg;
  Color darkFgAccent;
  
  Color darkContrast;
  Color darkContrastImportant;
  Color darkPrimaryContrast;
  Color darkPrimaryContrastImportant;
  Color darkSecondaryContrast;
  Color darkSecondaryContrastImportant;
  Color darkImageContrast;
  Color darkImageContrastImportant;
  
  ColorPalette({
    this.primary = Colors.deepPurple,
    this.primaryAccent = Colors.deepPurpleAccent,
    this.primaryContrast = Colors.purple,
    this.primaryContrastImportant = Colors.purpleAccent,
    this.primarySecondaryContrast = Colors.deepPurple,
    this.primarySecondaryContrastImportant = Colors.deepPurpleAccent,
    
    this.secondary = Colors.deepOrange,
    this.secondaryAccent = Colors.deepOrangeAccent,
    this.secondaryContrast = Colors.orange,
    this.secondaryContrastImportant = Colors.orangeAccent,
    this.secondaryPrimaryContrast = Colors.deepOrange,
    this.secondaryPrimaryContrastImportant = Colors.deepOrangeAccent,
    
    this.lightBg = Colors.white,
    this.lightBgAccent = Colors.white70,
    this.lightFg = Colors.white,
    this.lightFgAccent = Colors.white60,
    this.lightContrast = Colors.grey,
    this.lightContrastImportant = ConstantColors.gray800,
    this.lightPrimaryContrast = Colors.white70,
    this.lightPrimaryContrastImportant = Colors.white,
    this.lightSecondaryContrast = Colors.white70,
    this.lightSecondaryContrastImportant = Colors.white,
    this.lightImageContrast = Colors.white70,
    this.lightImageContrastImportant = Colors.white,

    this.darkBg = Colors.black,
    this.darkBgAccent = ConstantColors.gray1000,
    this.darkFg = ConstantColors.gray800,
    this.darkFgAccent = ConstantColors.gray700,
    this.darkContrast = Colors.white70,
    this.darkContrastImportant = Colors.white,
    this.darkPrimaryContrast = ConstantColors.gray800,
    this.darkPrimaryContrastImportant = Colors.black,
    this.darkSecondaryContrast = ConstantColors.gray800,
    this.darkSecondaryContrastImportant = Colors.black,
    this.darkImageContrast = ConstantColors.gray800,
    this.darkImageContrastImportant = Colors.black,
  });
}

//TODO - add a colorPalette for all base MaterialThemes and allow users to extend/create their own from there
class PinkPalette extends ColorPalette {
  PinkPalette() : super(
      primary: Colors.pink,
      primaryAccent: Colors.pinkAccent,
      secondary: Colors.pink,
      secondaryAccent: Colors.pinkAccent
  );
}

class GreenPalette extends ColorPalette {
  GreenPalette() : super(
      primary: Colors.green,
      primaryAccent: Colors.greenAccent,
      secondary: Colors.green,
      secondaryAccent: Colors.greenAccent
  );
}