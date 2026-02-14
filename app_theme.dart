import 'package:flutter/material.dart';
import 'package:swipe_app/core/theme/app_primitives.dart';
import 'app_semantics.dart';
import '../../shared/app_font.dart';

enum AppThemeMode { light, dark }

class AppTheme {
  // Backward compatibility
  static ThemeData get lightTheme => light();

  static ThemeData get darkTheme => dark();

  // ===========================================================================
  // THEME FACTORY
  // See [rules.md](file:///Users/palashpandya/StudioProjects/Swipe/rules.md) for implementation rules.
  // ===========================================================================

  static ThemeData light() {
    final colorScheme = const ColorScheme.light(
      primary: AppSemantics.primary,
      onPrimary: AppSemantics.textDarkGreen,
      // High contrast on bright lime
      secondary: AppSemantics.primary,
      // Accent fallback
      onSecondary: AppSemantics.textDarkGreen,
      surface: AppSemantics.white,
      onSurface: AppSemantics.textHeading,
      error: AppSemantics.alertDanger,
      onError: AppSemantics.white,
      outline: AppSemantics.borderNeutralOutlineLight, // Border Neutral Outline
    );

    return _baseTheme(
      colorScheme: colorScheme,
      extensions: const [
        AppColors(
          surfaceSuccessInput: AppSemantics.surfaceSuccessInput,
          alertWarning: AppSemantics.alertWarning,
          alertSuccess: AppSemantics.alertSuccess,
          alertDanger: AppSemantics.alertDanger,
          alertInfo: AppSemantics.alertInfo,
          textHeading: AppSemantics.textHeading,
          textContent: AppSemantics.textContent,
          textLightContent: AppSemantics.textLightContent,
          secondaryButton: AppSemantics.secondaryButtonColor,
          surfaceNeutral: AppPrimitives.darkGrey8,
          cardBackground: AppSemantics.white,
          primaryStrong: AppSemantics.primaryDark,
          textContrast: AppSemantics.textContrast,
          borderNeutralOutline: AppSemantics.borderNeutralOutlineLight,
          borderNeutralStrong: AppSemantics.borderNeutralStrongLight,
          buttonPrimaryStrong: AppSemantics.buttonPrimaryStrong,
          onButtonPrimaryStrong: AppSemantics.onButtonPrimaryStrong,
          textDarkGreen: AppSemantics.textDarkGreen,
          textLimeContent: AppPrimitives.limeGreenContent,
          textLimeHeading: AppPrimitives.limeGreen160,
          surfaceBrandTransparent: Color(
            0x4D9FE870,
          ), // rgba(159, 232, 112, 0.3)
          surfaceSuccessTransparent: Color(
            0x332CBD53,
          ), // rgba(44, 189, 83, 0.2)
          borderSuccessStrong: Color(0xFFB1E7C0),
        ),
      ],
    );
  }

  static ThemeData dark() {
    final colorScheme = const ColorScheme.dark(
      primary: AppSemantics.primary,
      onPrimary: AppSemantics.surfaceDarkBackground,
      secondary: AppSemantics.primary,
      onSecondary: AppSemantics.surfaceDarkBackground,
      surface: AppSemantics.darkSurface,
      onSurface: AppSemantics.white,
      error: AppSemantics.alertDanger,
      onError: AppSemantics.black,
      outline:
          AppSemantics.borderNeutralOutlineDark, // Darker border for dark mode
    );

    return _baseTheme(
      colorScheme: colorScheme,
      extensions: const [
        AppColors(
          surfaceSuccessInput: AppSemantics.surfaceSuccessInput,
          alertWarning: AppSemantics.alertWarning,
          alertSuccess: AppSemantics.alertSuccess,
          alertDanger: AppSemantics.alertDanger,
          alertInfo: AppSemantics.alertInfo,
          textHeading: AppSemantics.white,
          textContent: AppPrimitives
              .slate20, // Better readability for body text (CDCED5)
          textLightContent: AppSemantics.darkTextSecondary, // 7B7E8E
          borderNeutralStrong: AppSemantics.borderNeutralStrong,
          borderNeutralOutline: AppSemantics.borderNeutralOutlineDark,
          secondaryButton: AppPrimitives.slate80,
          surfaceNeutral: AppPrimitives.slate85,
          cardBackground: AppPrimitives.slate100,
          primaryStrong: AppPrimitives.limeGreen150,
          textContrast: AppPrimitives.white,
          buttonPrimaryStrong: AppSemantics.buttonPrimaryStrong,
          onButtonPrimaryStrong: AppSemantics.onButtonPrimaryStrong,
          textDarkGreen: AppPrimitives.limeGreen90,
          textLimeContent: AppPrimitives.limeGreen90, // Better contrast in dark
          textLimeHeading: AppPrimitives.limeGreen80, // Lighter for dark
          surfaceBrandTransparent: Color(
            0x409FE870,
          ), // 25% for better visibility
          surfaceSuccessTransparent: Color(
            0x402CBD53,
          ), // 25% for better visibility
          borderSuccessStrong: Color(0xFF2CBD53), // Stronger green for dark
        ),
      ],
    );
  }

  static ThemeData _baseTheme({
    required ColorScheme colorScheme,
    required List<ThemeExtension<dynamic>> extensions,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      extensions: extensions,
      // Typography
      textTheme: TextTheme(
        // Headings (h1, h2, h3, h4, h5, h6)
        displayLarge: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH1, // 32
          fontWeight: AppPrimitives.fontWeight600,
          color: colorScheme.onSurface,
          height: AppSemantics.lineHeightH1 / AppSemantics.fontSizeHeadingH1,
          letterSpacing: AppSemantics.letterSpacingH1,
        ),
        displayMedium: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH2, // 28
          fontWeight: AppPrimitives.fontWeight700,
          color: colorScheme.onSurface,
          height:
              AppSemantics.lineHeightH2Large / AppSemantics.fontSizeHeadingH2,
          letterSpacing: AppSemantics.letterSpacingH2Large,
        ),
        displaySmall: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH3, // 20
          fontWeight: AppPrimitives.fontWeight700,
          color: colorScheme.onSurface,
          height: AppSemantics.lineHeightH3 / AppSemantics.fontSizeHeadingH3,
          letterSpacing: AppSemantics.letterSpacingH3,
        ),
        headlineMedium: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH4, // 18
          fontWeight: AppPrimitives.fontWeight700,
          color: colorScheme.onSurface,
          height: AppSemantics.lineHeightH4 / AppSemantics.fontSizeHeadingH4,
          letterSpacing: AppSemantics.letterSpacingH4,
        ),
        headlineSmall: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH5, // 16
          fontWeight: AppPrimitives.fontWeight600,
          color: colorScheme.onSurface,
          height: AppSemantics.lineHeightH5 / AppSemantics.fontSizeHeadingH5,
          letterSpacing: AppSemantics.letterSpacingH5,
        ),
        titleLarge: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH6, // 14
          fontWeight: AppPrimitives.fontWeight600,
          color: colorScheme.onSurface,
          height: AppSemantics.lineHeightH6 / AppSemantics.fontSizeHeadingH6,
        ),

        // Body text (body lg, body, body xs)
        bodyLarge: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeBodyLg, // 18
          fontWeight: AppPrimitives.fontWeight400,
          color: colorScheme.onSurface,
          fontVariations: AppFont.getVariations(AppPrimitives.fontWeight400),
          height: AppSemantics.lineHeightBodyLg / AppSemantics.fontSizeBodyLg,
        ),
        bodyMedium: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeBodyMd, // 16
          fontWeight: AppPrimitives.fontWeight400,
          color: colorScheme.onSurface,
          fontVariations: AppFont.getVariations(AppPrimitives.fontWeight400),
          height: AppSemantics.lineHeightBodyMd / AppSemantics.fontSizeBodyMd,
        ),
        bodySmall: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeBodyXs, // 14
          fontWeight: AppPrimitives.fontWeight400,
          color: colorScheme.onSurface,
          fontVariations: AppFont.getVariations(AppPrimitives.fontWeight400),
          height: AppSemantics.lineHeightBodyXs / AppSemantics.fontSizeBodyXs,
        ),

        // Footnotes
        labelLarge: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeBodySm, // 14
          fontWeight: AppPrimitives.fontWeight600,
          color: colorScheme.onSurface,
          fontVariations: AppFont.getVariations(AppPrimitives.fontWeight600),
          height: AppSemantics.lineHeightBodySm / AppSemantics.fontSizeBodySm,
        ),
        labelSmall: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppPrimitives.fontSize13, // 13
          fontWeight: AppPrimitives.fontWeight400,
          color: colorScheme.onSurface,
          fontVariations: AppFont.getVariations(AppPrimitives.fontWeight400),
          height: AppSemantics.lineHeightFootnote / AppPrimitives.fontSize13,
          letterSpacing: AppSemantics.letterSpacingFootnote,
        ),
      ),

      // Component Themes
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: colorScheme.onSurface),
        titleTextStyle: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeHeadingH5, // 16 from Figma Heading H5
          fontWeight: AppPrimitives.fontWeight700,
          color: colorScheme.onSurface,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSemantics.radiusButton,
            ), // 12
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSemantics.spacingSm6, // 24
            vertical: AppSemantics.spacingXs6, // 12
          ),
          elevation: 0,
          textStyle: TextStyle(
            fontFamily: AppFont.satoshi,
            fontSize: AppSemantics.fontSizeBodyMd, // 16
            fontWeight: AppPrimitives.fontWeight600,
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.onSurface,
          side: BorderSide(color: colorScheme.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSemantics.radiusButton,
            ), // 12
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppSemantics.spacingSm6,
            vertical: AppSemantics.spacingXs6,
          ),
          textStyle: TextStyle(
            fontFamily: AppFont.satoshi,
            fontSize: AppSemantics.fontSizeBodyMd,
            fontWeight: AppPrimitives.fontWeight600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSemantics.spacingSm2, // 16
          vertical: AppSemantics.spacingSm2,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSemantics.radiusInput), // 12
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSemantics.radiusInput),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSemantics.radiusInput),
          borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSemantics.radiusInput),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        hintStyle: TextStyle(
          fontFamily: AppFont.satoshi,
          fontSize: AppSemantics.fontSizeBodySm,
          color: colorScheme.onSurface.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}

// ===========================================================================
// THEME EXTENSIONS
// ===========================================================================

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color? surfaceSuccessInput;
  final Color? alertWarning;
  final Color? alertSuccess;
  final Color? alertDanger;
  final Color? alertInfo;
  final Color? textHeading;
  final Color? textContent;
  final Color? textLightContent;
  final Color? borderNeutralStrong;
  final Color? borderNeutralOutline;
  final Color? secondaryButton;
  final Color? surfaceNeutral;
  final Color? cardBackground;
  final Color? primaryStrong;
  final Color? textContrast;
  final Color? buttonPrimaryStrong;
  final Color? onButtonPrimaryStrong;
  final Color? textDarkGreen;
  final Color? textLimeContent;
  final Color? textLimeHeading;
  final Color? surfaceBrandTransparent;
  final Color? surfaceSuccessTransparent;
  final Color? borderSuccessStrong;

  const AppColors({
    this.surfaceSuccessInput,
    this.alertWarning,
    this.alertSuccess,
    this.alertDanger,
    this.alertInfo,
    this.textHeading,
    this.textContent,
    this.textLightContent,
    this.borderNeutralStrong,
    this.borderNeutralOutline,
    this.secondaryButton,
    this.surfaceNeutral,
    this.cardBackground,
    this.primaryStrong,
    this.textContrast,
    this.buttonPrimaryStrong,
    this.onButtonPrimaryStrong,
    this.textDarkGreen,
    this.textLimeContent,
    this.textLimeHeading,
    this.surfaceBrandTransparent,
    this.surfaceSuccessTransparent,
    this.borderSuccessStrong,
  });

  @override
  AppColors copyWith({
    Color? surfaceSuccessInput,
    Color? alertWarning,
    Color? alertSuccess,
    Color? alertDanger,
    Color? alertInfo,
    Color? textHeading,
    Color? textContent,
    Color? textLightContent,
    Color? borderNeutralStrong,
    Color? borderNeutralOutline,
    Color? secondaryButton,
    Color? surfaceNeutral,
    Color? cardBackground,
    Color? primaryStrong,
    Color? textContrast,
    Color? buttonPrimaryStrong,
    Color? onButtonPrimaryStrong,
    Color? textDarkGreen,
    Color? textLimeContent,
    Color? textLimeHeading,
    Color? surfaceBrandTransparentParam,
    Color? surfaceSuccessTransparentParam,
    Color? borderSuccessStrongParam,
  }) {
    return AppColors(
      surfaceSuccessInput: surfaceSuccessInput ?? this.surfaceSuccessInput,
      alertWarning: alertWarning ?? this.alertWarning,
      alertSuccess: alertSuccess ?? this.alertSuccess,
      alertDanger: alertDanger ?? this.alertDanger,
      alertInfo: alertInfo ?? this.alertInfo,
      textHeading: textHeading ?? this.textHeading,
      textContent: textContent ?? this.textContent,
      textLightContent: textLightContent ?? this.textLightContent,
      borderNeutralStrong: borderNeutralStrong ?? this.borderNeutralStrong,
      borderNeutralOutline: borderNeutralOutline ?? this.borderNeutralOutline,
      secondaryButton: secondaryButton ?? this.secondaryButton,
      surfaceNeutral: surfaceNeutral ?? this.surfaceNeutral,
      cardBackground: cardBackground ?? this.cardBackground,
      primaryStrong: primaryStrong ?? this.primaryStrong,
      textContrast: textContrast ?? this.textContrast,
      buttonPrimaryStrong: buttonPrimaryStrong ?? this.buttonPrimaryStrong,
      onButtonPrimaryStrong:
          onButtonPrimaryStrong ?? this.onButtonPrimaryStrong,
      textDarkGreen: textDarkGreen ?? this.textDarkGreen,
      textLimeContent: textLimeContent ?? this.textLimeContent,
      textLimeHeading: textLimeHeading ?? this.textLimeHeading,
      surfaceBrandTransparent:
          surfaceBrandTransparentParam ?? surfaceBrandTransparent,
      surfaceSuccessTransparent:
          surfaceSuccessTransparentParam ?? surfaceSuccessTransparent,
      borderSuccessStrong: borderSuccessStrongParam ?? borderSuccessStrong,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      surfaceSuccessInput: Color.lerp(
        surfaceSuccessInput,
        other.surfaceSuccessInput,
        t,
      ),
      alertWarning: Color.lerp(alertWarning, other.alertWarning, t),
      alertSuccess: Color.lerp(alertSuccess, other.alertSuccess, t),
      alertDanger: Color.lerp(alertDanger, other.alertDanger, t),
      alertInfo: Color.lerp(alertInfo, other.alertInfo, t),
      textHeading: Color.lerp(textHeading, other.textHeading, t),
      textContent: Color.lerp(textContent, other.textContent, t),
      textLightContent: Color.lerp(textLightContent, other.textLightContent, t),
      borderNeutralStrong: Color.lerp(
        borderNeutralStrong,
        other.borderNeutralStrong,
        t,
      ),
      borderNeutralOutline: Color.lerp(
        borderNeutralOutline,
        other.borderNeutralOutline,
        t,
      ),
      secondaryButton: Color.lerp(secondaryButton, other.secondaryButton, t),
      surfaceNeutral: Color.lerp(surfaceNeutral, other.surfaceNeutral, t),
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      primaryStrong: Color.lerp(primaryStrong, other.primaryStrong, t),
      textContrast: Color.lerp(textContrast, other.textContrast, t),
      buttonPrimaryStrong: Color.lerp(
        buttonPrimaryStrong,
        other.buttonPrimaryStrong,
        t,
      ),
      onButtonPrimaryStrong: Color.lerp(
        onButtonPrimaryStrong,
        other.onButtonPrimaryStrong,
        t,
      ),
      textDarkGreen: Color.lerp(textDarkGreen, other.textDarkGreen, t),
      textLimeContent: Color.lerp(textLimeContent, other.textLimeContent, t),
      textLimeHeading: Color.lerp(textLimeHeading, other.textLimeHeading, t),
      surfaceBrandTransparent: Color.lerp(
        surfaceBrandTransparent,
        other.surfaceBrandTransparent,
        t,
      ),
      surfaceSuccessTransparent: Color.lerp(
        surfaceSuccessTransparent,
        other.surfaceSuccessTransparent,
        t,
      ),
      borderSuccessStrong: Color.lerp(
        borderSuccessStrong,
        other.borderSuccessStrong,
        t,
      ),
    );
  }
}

// ===========================================================================
// TEXT THEME EXTENSIONS
// ===========================================================================

/// Extension methods for common text style variations
/// These provide convenient access to frequently used style modifications
extension TextThemeExtensions on TextTheme {
  // ========================================
  // Medium weight variants (FontVariation 530 ≈ w500)
  // ========================================

  /// Medium weight variant of bodyLarge (16px, w500)
  TextStyle get bodyLargeMedium => bodyLarge!.copyWith(
    fontWeight: FontWeight.w500,
    fontVariations: AppFont.getVariations(FontWeight.w500),
  );

  /// Medium weight variant of bodyMedium (14px, w500)
  TextStyle get bodyMediumMedium => bodyMedium!.copyWith(
    fontWeight: FontWeight.w500,
    fontVariations: AppFont.getVariations(FontWeight.w500),
  );

  // ========================================
  // SemiBold variants (w600)
  // ========================================

  /// SemiBold variant of bodyLarge (16px, w600)
  TextStyle get bodyLargeSemiBold => bodyLarge!.copyWith(
    fontWeight: FontWeight.w600,
    fontVariations: AppFont.getVariations(FontWeight.w600),
  );

  /// SemiBold variant of bodyMedium (14px, w600)
  TextStyle get bodyMediumSemiBold => bodyMedium!.copyWith(
    fontWeight: FontWeight.w600,
    fontVariations: AppFont.getVariations(FontWeight.w600),
  );

  /// SemiBold variant of displaySmall (20px, w600) - for h3 with custom weight
  TextStyle get displaySmallSemiBold =>
      displaySmall!.copyWith(fontWeight: FontWeight.w600);

  // ========================================
  // Light variants (w300)
  // ========================================

  /// Light variant of bodyLarge (16px, w300)
  TextStyle get bodyLargeLight => bodyLarge!.copyWith(
    fontWeight: FontWeight.w300,
    fontVariations: AppFont.getVariations(FontWeight.w300),
  );

  /// Light variant of bodyMedium (14px, w300)
  TextStyle get bodyMediumLight => bodyMedium!.copyWith(
    fontWeight: FontWeight.w300,
    fontVariations: AppFont.getVariations(FontWeight.w300),
  );

  // ========================================
  // Helper methods for custom styles (matching old AppStyles methods)
  // ========================================

  /// Regular variant with explicit FontVariation for consistency
  TextStyle regularTextStyle({
    double? fontSize,
    Color? textColor,
    double? opacity,
    double? lineHeight,
    double? letterSpacing,
  }) {
    final base = bodyLarge!;
    return base.copyWith(
      fontSize: fontSize,
      color: opacity != null
          ? textColor?.withValues(alpha: opacity)
          : textColor,
      height: lineHeight != null && fontSize != null
          ? lineHeight / fontSize
          : null,
      letterSpacing: letterSpacing,
      fontVariations: AppFont.getVariations(FontWeight.w400),
    );
  }

  /// Medium variant with explicit FontVariation
  TextStyle mediumTextStyle({
    double? fontSize,
    Color? textColor,
    double? opacity,
    double? lineHeight,
    double? letterSpacing,
  }) {
    final base = bodyLarge!;
    return base.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: opacity != null
          ? textColor?.withValues(alpha: opacity)
          : textColor,
      height: lineHeight != null && fontSize != null
          ? lineHeight / fontSize
          : null,
      letterSpacing: letterSpacing,
      fontVariations: AppFont.getVariations(FontWeight.w500),
    );
  }

  /// SemiBold variant with custom properties
  TextStyle semiBoldTextStyle({
    double? fontSize,
    Color? textColor,
    double? opacity,
    double? lineHeight,
    double? letterSpacing,
  }) {
    final base = bodyLarge!;
    return base.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: opacity != null
          ? textColor?.withValues(alpha: opacity)
          : textColor,
      height: lineHeight != null && fontSize != null
          ? lineHeight / fontSize
          : null,
      letterSpacing: letterSpacing,
      fontVariations: AppFont.getVariations(FontWeight.w600),
    );
  }

  /// Bold variant with custom properties
  TextStyle boldTextStyle({
    double? fontSize,
    Color? textColor,
    double? opacity,
  }) {
    final base = bodyLarge!;
    return base.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: opacity != null
          ? textColor?.withValues(alpha: opacity)
          : textColor,
      fontVariations: AppFont.getVariations(FontWeight.w700),
    );
  }

  /// Light variant with custom properties
  TextStyle lightTextStyle({
    double? fontSize,
    required Color textColor,
    double? opacity,
  }) {
    final base = bodyLarge!;
    return base.copyWith(
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      color: opacity != null ? textColor.withValues(alpha: opacity) : textColor,
      fontVariations: AppFont.getVariations(FontWeight.w300),
    );
  }
}

// ===========================================================================
// CONTEXT EXTENSIONS
// ===========================================================================

extension AppThemeContext on BuildContext {
  /// Access to AppColors theme extension
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  /// Access to standard TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Access to ColorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
