import 'package:flutter/material.dart';
import 'package:material_themes_manager/src/theme_group.dart';

import '../material_themes_manager.dart';

class DarkThemeGroup extends ThemeGroup {

  //TODO :
  /*
  ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),

   */

  @override
  ThemeData mainOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData primaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primary,
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.primary,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : colorPalette.primary,
    );
  }

  @override
  ThemeData secondaryOnMain({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondary,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.secondary,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : colorPalette.secondary,
    );
  }

  @override
  ThemeData mainOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor: emphasis == Emphasis.HIGH ? colorPalette.darkPrimaryContrastImportant : colorPalette.darkPrimaryContrast,
    );
  }

  @override
  ThemeData primaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.primaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData secondaryOnPrimary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondaryPrimaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondaryPrimaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondaryPrimaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.secondaryPrimaryContrastImportant : colorPalette.secondaryPrimaryContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData mainOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: this.colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor: emphasis == Emphasis.HIGH ? colorPalette.darkSecondaryContrastImportant : colorPalette.darkSecondaryContrast,
    );
  }

  @override
  ThemeData primaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primarySecondaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.primarySecondaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primarySecondaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.primarySecondaryContrastImportant : colorPalette.primarySecondaryContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData secondaryOnSecondary({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondaryContrast,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondaryContrast,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.primaryContrastImportant : colorPalette.primaryContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondaryContrast,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.secondaryContrastImportant : colorPalette.secondaryContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData mainOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.darkBg,
      appBarTheme: AppBarTheme(
        color: colorPalette.darkBg,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: important ? colorPalette.darkContrastImportant : colorPalette.darkContrast,
        ),
        textTheme: TextTheme(
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.darkFg,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : emphasis == Emphasis.HIGH ? colorPalette.darkImageContrastImportant : colorPalette.darkImageContrast,
      /*toggleButtonsTheme: ToggleButtonsThemeData(
        //TODO - do we want to add more styling?
      ),*/
    );
  }

  @override
  ThemeData primaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.primary,
      appBarTheme: AppBarTheme(
        color: colorPalette.primary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.primary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: colorPalette.primary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.primary,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : colorPalette.primary,
    );
  }

  @override
  ThemeData secondaryOnImage({Emphasis emphasis = Emphasis.NONE, ElevationLevel elevationLevel = ElevationLevel.LOW, IconSize iconSize = IconSize.SMALL}) {
    return ThemeData(
      scaffoldBackgroundColor: colorPalette.secondary,
      appBarTheme: AppBarTheme(
        color: colorPalette.secondary,
        //TODO - do we want to handle the icon theme or just pass in the appbar caller?
        /*iconTheme: IconThemeData(
          color: Colors.white,
        ),*/
      ),
      cardTheme: CardTheme(
        color: colorPalette.secondary,
        elevation: getElevation(elevationLevel)
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H1)
        ),
        headline2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H2)
        ),
        headline3: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H3)
        ),
        headline4: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H4)
        ),
        headline5: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.H5)
        ),
        headline6: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.TITLE)
        ),
        subtitle1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB1)
        ),
        subtitle2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.SUB2)
        ),
        bodyText1: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY1)
        ),
        bodyText2: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.BODY2)
        ),
        caption: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.CAPTION)
        ),
        overline: TextStyle(
            color: colorPalette.secondary,
            fontWeight: getFontWeight(emphasis),
            fontSize: getFontSize(FontSize.OVERLINE)
        ),
      ),
      iconTheme: IconThemeData(
        color: colorPalette.secondary,
        size: getIconSize(iconSize)
      ),
      toggleableActiveColor : colorPalette.secondary,
    );
  }

  @override
  Widget mainBackgroundGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorPalette.darkBg,
            colorPalette.darkBgAccent,
          ],
        ),
      ),
    );
  }

  @override
  Widget mainForegroundGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorPalette.darkFg,
            colorPalette.darkFgAccent,
          ],
        ),
      ),
    );
  }

  @override
  Widget primaryGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorPalette.primary,
            colorPalette.primaryAccent,
          ],
        ),
      ),
    );
  }

  @override
  Widget secondaryGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorPalette.secondary,
            colorPalette.secondaryAccent,
          ],
        ),
      ),
    );
  }

}