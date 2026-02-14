import 'package:flutter/material.dart';
import 'package:swipe_app/core/theme/design_tokens_swipe.dart';

/// AppThemeColors extension to expose design tokens in the Theme.
/// This file is the single source of truth for app colors, derived from `design_tokens_swipe.dart`.
@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final AppAlertColors alert;
  final AppBorderColors border;
  final AppBrandColors brand;
  final AppButtonColors button;
  final AppIconColors icon;
  final AppSurfaceColors surface;
  final AppTextColors text;

  const AppThemeColors({
    required this.alert,
    required this.border,
    required this.brand,
    required this.button,
    required this.icon,
    required this.surface,
    required this.text,
  });

  factory AppThemeColors.light() {
    return AppThemeColors.fromSemantic(Semantic.brandLight);
  }

  factory AppThemeColors.dark() {
    return AppThemeColors.fromSemantic(Semantic.brandMobileDark);
  }

  factory AppThemeColors.fromSemantic(Semantic s) {
    return AppThemeColors(
      alert: AppAlertColors.fromSemantic(s),
      border: AppBorderColors.fromSemantic(s),
      brand: AppBrandColors.fromSemantic(s),
      button: AppButtonColors.fromSemantic(s),
      icon: AppIconColors.fromSemantic(s),
      surface: AppSurfaceColors.fromSemantic(s),
      text: AppTextColors.fromSemantic(s),
    );
  }

  @override
  AppThemeColors copyWith({
    AppAlertColors? alert,
    AppBorderColors? border,
    AppBrandColors? brand,
    AppButtonColors? button,
    AppIconColors? icon,
    AppSurfaceColors? surface,
    AppTextColors? text,
  }) {
    return AppThemeColors(
      alert: alert ?? this.alert,
      border: border ?? this.border,
      brand: brand ?? this.brand,
      button: button ?? this.button,
      icon: icon ?? this.icon,
      surface: surface ?? this.surface,
      text: text ?? this.text,
    );
  }

  @override
  AppThemeColors lerp(ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      alert: alert.lerp(other.alert, t),
      border: border.lerp(other.border, t),
      brand: brand.lerp(other.brand, t),
      button: button.lerp(other.button, t),
      icon: icon.lerp(other.icon, t),
      surface: surface.lerp(other.surface, t),
      text: text.lerp(other.text, t),
    );
  }
}

@immutable
class AppAlertColors {
  final Color danger;
  final Color info;
  final Color success;
  final Color urgentWarning;
  final Color warning;

  const AppAlertColors({
    required this.danger,
    required this.info,
    required this.success,
    required this.urgentWarning,
    required this.warning,
  });

  factory AppAlertColors.fromSemantic(Semantic s) {
    return AppAlertColors(
      danger: s.coloursAlertDanger,
      info: s.coloursAlertInfo,
      success: s.coloursAlertSuccess,
      urgentWarning: s.coloursAlertUrgentWarning,
      warning: s.coloursAlertWarning,
    );
  }

  AppAlertColors lerp(AppAlertColors other, double t) {
    return AppAlertColors(
      danger: Color.lerp(danger, other.danger, t)!,
      info: Color.lerp(info, other.info, t)!,
      success: Color.lerp(success, other.success, t)!,
      urgentWarning: Color.lerp(urgentWarning, other.urgentWarning, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }
}

@immutable
class AppBorderColors {
  final Color dangerAlt;
  final Color dangerDefault;
  final Color dangerFocus;
  final Color dangerLight;
  final Color dangerStrong;
  final Color infoAlt;
  final Color infoDefault;
  final Color infoFocus;
  final Color infoLight;
  final Color infoStrong;
  final Color limeGreenAlt;
  final Color limeGreenDefault;
  final Color limeGreenFocus;
  final Color limeGreenLight;
  final Color limeGreenStrong;
  final Color neutralAlt;
  final Color neutralDefault;
  final Color neutralFocus;
  final Color neutralLight;
  final Color neutralStrong;
  final Color neutralXStrong;
  final Color successAlt;
  final Color successFocus;
  final Color successLight;
  final Color successStrong;
  final Color successXStrong;
  final Color urgentWarningAlt;
  final Color urgentWarningDefault;
  final Color urgentWarningFocus;
  final Color urgentWarningLight;
  final Color urgentWarningStrong;
  final Color warningAlt;
  final Color warningDefault;
  final Color warningFocus;
  final Color warningLight;
  final Color warningStrong;
  final Color whiteDefault;
  final Color whiteLight;
  final Color whiteStrong;

  const AppBorderColors({
    required this.dangerAlt,
    required this.dangerDefault,
    required this.dangerFocus,
    required this.dangerLight,
    required this.dangerStrong,
    required this.infoAlt,
    required this.infoDefault,
    required this.infoFocus,
    required this.infoLight,
    required this.infoStrong,
    required this.limeGreenAlt,
    required this.limeGreenDefault,
    required this.limeGreenFocus,
    required this.limeGreenLight,
    required this.limeGreenStrong,
    required this.neutralAlt,
    required this.neutralDefault,
    required this.neutralFocus,
    required this.neutralLight,
    required this.neutralStrong,
    required this.neutralXStrong,
    required this.successAlt,
    required this.successFocus,
    required this.successLight,
    required this.successStrong,
    required this.successXStrong,
    required this.urgentWarningAlt,
    required this.urgentWarningDefault,
    required this.urgentWarningFocus,
    required this.urgentWarningLight,
    required this.urgentWarningStrong,
    required this.warningAlt,
    required this.warningDefault,
    required this.warningFocus,
    required this.warningLight,
    required this.warningStrong,
    required this.whiteDefault,
    required this.whiteLight,
    required this.whiteStrong,
  });

  factory AppBorderColors.fromSemantic(Semantic s) {
    return AppBorderColors(
      dangerAlt: s.coloursBorderDangerAlt,
      dangerDefault: s.coloursBorderDangerDefault,
      dangerFocus: s.coloursBorderDangerFocus,
      dangerLight: s.coloursBorderDangerLight,
      dangerStrong: s.coloursBorderDangerStrong,
      infoAlt: s.coloursBorderInfoAlt,
      infoDefault: s.coloursBorderInfoDefault,
      infoFocus: s.coloursBorderInfoFocus,
      infoLight: s.coloursBorderInfoLight,
      infoStrong: s.coloursBorderInfoStrong,
      limeGreenAlt: s.coloursBorderLimeGreenAlt,
      limeGreenDefault: s.coloursBorderLimeGreenDefault,
      limeGreenFocus: s.coloursBorderLimeGreenFocus,
      limeGreenLight: s.coloursBorderLimeGreenLight,
      limeGreenStrong: s.coloursBorderLimeGreenStrong,
      neutralAlt: s.coloursBorderNeutralAlt,
      neutralDefault: s.coloursBorderNeutralDefault,
      neutralFocus: s.coloursBorderNeutralFocus,
      neutralLight: s.coloursBorderNeutralLight,
      neutralStrong: s.coloursBorderNeutralStrong,
      neutralXStrong: s.coloursBorderNeutralXStrong,
      successAlt: s.coloursBorderSuccessAlt,
      successFocus: s.coloursBorderSuccessFocus,
      successLight: s.coloursBorderSuccessLight,
      successStrong: s.coloursBorderSuccessStrong,
      successXStrong: s.coloursBorderSuccessXStrong,
      urgentWarningAlt: s.coloursBorderUrgentWarningAlt,
      urgentWarningDefault: s.coloursBorderUrgentWarningDefault,
      urgentWarningFocus: s.coloursBorderUrgentWarningFocus,
      urgentWarningLight: s.coloursBorderUrgentWarningLight,
      urgentWarningStrong: s.coloursBorderUrgentWarningStrong,
      warningAlt: s.coloursBorderWarningAlt,
      warningDefault: s.coloursBorderWarningDefault,
      warningFocus: s.coloursBorderWarningFocus,
      warningLight: s.coloursBorderWarningLight,
      warningStrong: s.coloursBorderWarningStrong,
      whiteDefault: s.coloursBorderWhiteDefault,
      whiteLight: s.coloursBorderWhiteLight,
      whiteStrong: s.coloursBorderWhiteStrong,
    );
  }

  AppBorderColors lerp(AppBorderColors other, double t) {
    return AppBorderColors(
      dangerAlt: Color.lerp(dangerAlt, other.dangerAlt, t)!,
      dangerDefault: Color.lerp(dangerDefault, other.dangerDefault, t)!,
      dangerFocus: Color.lerp(dangerFocus, other.dangerFocus, t)!,
      dangerLight: Color.lerp(dangerLight, other.dangerLight, t)!,
      dangerStrong: Color.lerp(dangerStrong, other.dangerStrong, t)!,
      infoAlt: Color.lerp(infoAlt, other.infoAlt, t)!,
      infoDefault: Color.lerp(infoDefault, other.infoDefault, t)!,
      infoFocus: Color.lerp(infoFocus, other.infoFocus, t)!,
      infoLight: Color.lerp(infoLight, other.infoLight, t)!,
      infoStrong: Color.lerp(infoStrong, other.infoStrong, t)!,
      limeGreenAlt: Color.lerp(limeGreenAlt, other.limeGreenAlt, t)!,
      limeGreenDefault: Color.lerp(
        limeGreenDefault,
        other.limeGreenDefault,
        t,
      )!,
      limeGreenFocus: Color.lerp(limeGreenFocus, other.limeGreenFocus, t)!,
      limeGreenLight: Color.lerp(limeGreenLight, other.limeGreenLight, t)!,
      limeGreenStrong: Color.lerp(limeGreenStrong, other.limeGreenStrong, t)!,
      neutralAlt: Color.lerp(neutralAlt, other.neutralAlt, t)!,
      neutralDefault: Color.lerp(neutralDefault, other.neutralDefault, t)!,
      neutralFocus: Color.lerp(neutralFocus, other.neutralFocus, t)!,
      neutralLight: Color.lerp(neutralLight, other.neutralLight, t)!,
      neutralStrong: Color.lerp(neutralStrong, other.neutralStrong, t)!,
      neutralXStrong: Color.lerp(neutralXStrong, other.neutralXStrong, t)!,
      successAlt: Color.lerp(successAlt, other.successAlt, t)!,
      successFocus: Color.lerp(successFocus, other.successFocus, t)!,
      successLight: Color.lerp(successLight, other.successLight, t)!,
      successStrong: Color.lerp(successStrong, other.successStrong, t)!,
      successXStrong: Color.lerp(successXStrong, other.successXStrong, t)!,
      urgentWarningAlt: Color.lerp(
        urgentWarningAlt,
        other.urgentWarningAlt,
        t,
      )!,
      urgentWarningDefault: Color.lerp(
        urgentWarningDefault,
        other.urgentWarningDefault,
        t,
      )!,
      urgentWarningFocus: Color.lerp(
        urgentWarningFocus,
        other.urgentWarningFocus,
        t,
      )!,
      urgentWarningLight: Color.lerp(
        urgentWarningLight,
        other.urgentWarningLight,
        t,
      )!,
      urgentWarningStrong: Color.lerp(
        urgentWarningStrong,
        other.urgentWarningStrong,
        t,
      )!,
      warningAlt: Color.lerp(warningAlt, other.warningAlt, t)!,
      warningDefault: Color.lerp(warningDefault, other.warningDefault, t)!,
      warningFocus: Color.lerp(warningFocus, other.warningFocus, t)!,
      warningLight: Color.lerp(warningLight, other.warningLight, t)!,
      warningStrong: Color.lerp(warningStrong, other.warningStrong, t)!,
      whiteDefault: Color.lerp(whiteDefault, other.whiteDefault, t)!,
      whiteLight: Color.lerp(whiteLight, other.whiteLight, t)!,
      whiteStrong: Color.lerp(whiteStrong, other.whiteStrong, t)!,
    );
  }
}

@immutable
class AppBrandColors {
  final Color limeGreen;
  final Color limeGreenAccent;
  final Color secondary;

  const AppBrandColors({
    required this.limeGreen,
    required this.limeGreenAccent,
    required this.secondary,
  });

  factory AppBrandColors.fromSemantic(Semantic s) {
    return AppBrandColors(
      limeGreen: s.coloursBrandLimeGreen,
      limeGreenAccent: s.coloursBrandLimeGreenAccent,
      secondary: s.coloursBrandSecondary,
    );
  }

  AppBrandColors lerp(AppBrandColors other, double t) {
    return AppBrandColors(
      limeGreen: Color.lerp(limeGreen, other.limeGreen, t)!,
      limeGreenAccent: Color.lerp(limeGreenAccent, other.limeGreenAccent, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
    );
  }
}

@immutable
class AppButtonColors {
  final Color dangerOutlineColour;
  final Color dangerOutlineTextIcon;
  final Color dangerSolidSurface;
  final Color dangerSolidTextIcon;
  final Color dangerTintedTextIcon;
  final Color dangerTransparentSurface;
  final Color ghostGhostSurface;
  final Color infoOutlineColour;
  final Color infoOutlineTextIcon;
  final Color infoSolidSurface;
  final Color infoSolidTextIcon;
  final Color infoTintedTextIcon;
  final Color infoTransparentSurface;
  final Color neutralOutlineColour;
  final Color neutralOutlineTextIcon;
  final Color neutralSolidSurface;
  final Color neutralSolidTextIcon;
  final Color neutralTintedTextIcon;
  final Color neutralTransparentSurface;
  final Color primaryLimeGreenOutlineColour;
  final Color primaryLimeGreenOutlineTextIcon;
  final Color primaryLimeGreenSolidSurface;
  final Color primaryLimeGreenSolidTextIcon;
  final Color primaryLimeGreenTintedTextIcon;
  final Color primaryLimeGreenTransparentSurface;
  final Color successOutlineColour;
  final Color successOutlineTextIcon;
  final Color successSolidSurface;
  final Color successSolidTextIcon;
  final Color successTintedTextIcon;
  final Color successTransparentSurface;
  final Color urgentWarningOutlineColour;
  final Color urgentWarningOutlineTextIcon;
  final Color urgentWarningSolidSurface;
  final Color urgentWarningSolidTextIcon;
  final Color urgentWarningTintedTextIcon;
  final Color urgentWarningTransparentSurface;
  final Color warningOutlineColour;
  final Color warningOutlineTextIcon;
  final Color warningSolidSurface;
  final Color warningSolidTextIcon;
  final Color warningTintedTextIcon;
  final Color warningTransparentSurface;

  const AppButtonColors({
    required this.dangerOutlineColour,
    required this.dangerOutlineTextIcon,
    required this.dangerSolidSurface,
    required this.dangerSolidTextIcon,
    required this.dangerTintedTextIcon,
    required this.dangerTransparentSurface,
    required this.ghostGhostSurface,
    required this.infoOutlineColour,
    required this.infoOutlineTextIcon,
    required this.infoSolidSurface,
    required this.infoSolidTextIcon,
    required this.infoTintedTextIcon,
    required this.infoTransparentSurface,
    required this.neutralOutlineColour,
    required this.neutralOutlineTextIcon,
    required this.neutralSolidSurface,
    required this.neutralSolidTextIcon,
    required this.neutralTintedTextIcon,
    required this.neutralTransparentSurface,
    required this.primaryLimeGreenOutlineColour,
    required this.primaryLimeGreenOutlineTextIcon,
    required this.primaryLimeGreenSolidSurface,
    required this.primaryLimeGreenSolidTextIcon,
    required this.primaryLimeGreenTintedTextIcon,
    required this.primaryLimeGreenTransparentSurface,
    required this.successOutlineColour,
    required this.successOutlineTextIcon,
    required this.successSolidSurface,
    required this.successSolidTextIcon,
    required this.successTintedTextIcon,
    required this.successTransparentSurface,
    required this.urgentWarningOutlineColour,
    required this.urgentWarningOutlineTextIcon,
    required this.urgentWarningSolidSurface,
    required this.urgentWarningSolidTextIcon,
    required this.urgentWarningTintedTextIcon,
    required this.urgentWarningTransparentSurface,
    required this.warningOutlineColour,
    required this.warningOutlineTextIcon,
    required this.warningSolidSurface,
    required this.warningSolidTextIcon,
    required this.warningTintedTextIcon,
    required this.warningTransparentSurface,
  });

  factory AppButtonColors.fromSemantic(Semantic s) {
    return AppButtonColors(
      dangerOutlineColour: s.coloursButtonDangerOutlineColour,
      dangerOutlineTextIcon: s.coloursButtonDangerOutlineTextIcon,
      dangerSolidSurface: s.coloursButtonDangerSolidSurface,
      dangerSolidTextIcon: s.coloursButtonDangerSolidTextIcon,
      dangerTintedTextIcon: s.coloursButtonDangerTintedTextIcon,
      dangerTransparentSurface: s.coloursButtonDangerTransparentSurface,
      ghostGhostSurface: s.coloursButtonGhostGhostSurface,
      infoOutlineColour: s.coloursButtonInfoOutlineColour,
      infoOutlineTextIcon: s.coloursButtonInfoOutlineTextIcon,
      infoSolidSurface: s.coloursButtonInfoSolidSurface,
      infoSolidTextIcon: s.coloursButtonInfoSolidTextIcon,
      infoTintedTextIcon: s.coloursButtonInfoTintedTextIcon,
      infoTransparentSurface: s.coloursButtonInfoTransparentSurface,
      neutralOutlineColour: s.coloursButtonNeutralOutlineColour,
      neutralOutlineTextIcon: s.coloursButtonNeutralOutlineTextIcon,
      neutralSolidSurface: s.coloursButtonNeutralSolidSurface,
      neutralSolidTextIcon: s.coloursButtonNeutralSolidTextIcon,
      neutralTintedTextIcon: s.coloursButtonNeutralTintedTextIcon,
      neutralTransparentSurface: s.coloursButtonNeutralTransparentSurface,
      primaryLimeGreenOutlineColour:
          s.coloursButtonPrimaryLimeGreenOutlineColour,
      primaryLimeGreenOutlineTextIcon:
          s.coloursButtonPrimaryLimeGreenOutlineTextIcon,
      primaryLimeGreenSolidSurface: s.coloursButtonPrimaryLimeGreenSolidSurface,
      primaryLimeGreenSolidTextIcon:
          s.coloursButtonPrimaryLimeGreenSolidTextIcon,
      primaryLimeGreenTintedTextIcon:
          s.coloursButtonPrimaryLimeGreenTintedTextIcon,
      primaryLimeGreenTransparentSurface:
          s.coloursButtonPrimaryLimeGreenTransparentSurface,
      successOutlineColour: s.coloursButtonSuccessOutlineColour,
      successOutlineTextIcon: s.coloursButtonSuccessOutlineTextIcon,
      successSolidSurface: s.coloursButtonSuccessSolidSurface,
      successSolidTextIcon: s.coloursButtonSuccessSolidTextIcon,
      successTintedTextIcon: s.coloursButtonSuccessTintedTextIcon,
      successTransparentSurface: s.coloursButtonSuccessTransparentSurface,
      urgentWarningOutlineColour: s.coloursButtonUrgentWarningOutlineColour,
      urgentWarningOutlineTextIcon: s.coloursButtonUrgentWarningOutlineTextIcon,
      urgentWarningSolidSurface: s.coloursButtonUrgentWarningSolidSurface,
      urgentWarningSolidTextIcon: s.coloursButtonUrgentWarningSolidTextIcon,
      urgentWarningTintedTextIcon: s.coloursButtonUrgentWarningTintedTextIcon,
      urgentWarningTransparentSurface:
          s.coloursButtonUrgentWarningTransparentSurface,
      warningOutlineColour: s.coloursButtonWarningOutlineColour,
      warningOutlineTextIcon: s.coloursButtonWarningOutlineTextIcon,
      warningSolidSurface: s.coloursButtonWarningSolidSurface,
      warningSolidTextIcon: s.coloursButtonWarningSolidTextIcon,
      warningTintedTextIcon: s.coloursButtonWarningTintedTextIcon,
      warningTransparentSurface: s.coloursButtonWarningTransparentSurface,
    );
  }

  AppButtonColors lerp(AppButtonColors other, double t) {
    return AppButtonColors(
      dangerOutlineColour: Color.lerp(
        dangerOutlineColour,
        other.dangerOutlineColour,
        t,
      )!,
      dangerOutlineTextIcon: Color.lerp(
        dangerOutlineTextIcon,
        other.dangerOutlineTextIcon,
        t,
      )!,
      dangerSolidSurface: Color.lerp(
        dangerSolidSurface,
        other.dangerSolidSurface,
        t,
      )!,
      dangerSolidTextIcon: Color.lerp(
        dangerSolidTextIcon,
        other.dangerSolidTextIcon,
        t,
      )!,
      dangerTintedTextIcon: Color.lerp(
        dangerTintedTextIcon,
        other.dangerTintedTextIcon,
        t,
      )!,
      dangerTransparentSurface: Color.lerp(
        dangerTransparentSurface,
        other.dangerTransparentSurface,
        t,
      )!,
      ghostGhostSurface: Color.lerp(
        ghostGhostSurface,
        other.ghostGhostSurface,
        t,
      )!,
      infoOutlineColour: Color.lerp(
        infoOutlineColour,
        other.infoOutlineColour,
        t,
      )!,
      infoOutlineTextIcon: Color.lerp(
        infoOutlineTextIcon,
        other.infoOutlineTextIcon,
        t,
      )!,
      infoSolidSurface: Color.lerp(
        infoSolidSurface,
        other.infoSolidSurface,
        t,
      )!,
      infoSolidTextIcon: Color.lerp(
        infoSolidTextIcon,
        other.infoSolidTextIcon,
        t,
      )!,
      infoTintedTextIcon: Color.lerp(
        infoTintedTextIcon,
        other.infoTintedTextIcon,
        t,
      )!,
      infoTransparentSurface: Color.lerp(
        infoTransparentSurface,
        other.infoTransparentSurface,
        t,
      )!,
      neutralOutlineColour: Color.lerp(
        neutralOutlineColour,
        other.neutralOutlineColour,
        t,
      )!,
      neutralOutlineTextIcon: Color.lerp(
        neutralOutlineTextIcon,
        other.neutralOutlineTextIcon,
        t,
      )!,
      neutralSolidSurface: Color.lerp(
        neutralSolidSurface,
        other.neutralSolidSurface,
        t,
      )!,
      neutralSolidTextIcon: Color.lerp(
        neutralSolidTextIcon,
        other.neutralSolidTextIcon,
        t,
      )!,
      neutralTintedTextIcon: Color.lerp(
        neutralTintedTextIcon,
        other.neutralTintedTextIcon,
        t,
      )!,
      neutralTransparentSurface: Color.lerp(
        neutralTransparentSurface,
        other.neutralTransparentSurface,
        t,
      )!,
      primaryLimeGreenOutlineColour: Color.lerp(
        primaryLimeGreenOutlineColour,
        other.primaryLimeGreenOutlineColour,
        t,
      )!,
      primaryLimeGreenOutlineTextIcon: Color.lerp(
        primaryLimeGreenOutlineTextIcon,
        other.primaryLimeGreenOutlineTextIcon,
        t,
      )!,
      primaryLimeGreenSolidSurface: Color.lerp(
        primaryLimeGreenSolidSurface,
        other.primaryLimeGreenSolidSurface,
        t,
      )!,
      primaryLimeGreenSolidTextIcon: Color.lerp(
        primaryLimeGreenSolidTextIcon,
        other.primaryLimeGreenSolidTextIcon,
        t,
      )!,
      primaryLimeGreenTintedTextIcon: Color.lerp(
        primaryLimeGreenTintedTextIcon,
        other.primaryLimeGreenTintedTextIcon,
        t,
      )!,
      primaryLimeGreenTransparentSurface: Color.lerp(
        primaryLimeGreenTransparentSurface,
        other.primaryLimeGreenTransparentSurface,
        t,
      )!,
      successOutlineColour: Color.lerp(
        successOutlineColour,
        other.successOutlineColour,
        t,
      )!,
      successOutlineTextIcon: Color.lerp(
        successOutlineTextIcon,
        other.successOutlineTextIcon,
        t,
      )!,
      successSolidSurface: Color.lerp(
        successSolidSurface,
        other.successSolidSurface,
        t,
      )!,
      successSolidTextIcon: Color.lerp(
        successSolidTextIcon,
        other.successSolidTextIcon,
        t,
      )!,
      successTintedTextIcon: Color.lerp(
        successTintedTextIcon,
        other.successTintedTextIcon,
        t,
      )!,
      successTransparentSurface: Color.lerp(
        successTransparentSurface,
        other.successTransparentSurface,
        t,
      )!,
      urgentWarningOutlineColour: Color.lerp(
        urgentWarningOutlineColour,
        other.urgentWarningOutlineColour,
        t,
      )!,
      urgentWarningOutlineTextIcon: Color.lerp(
        urgentWarningOutlineTextIcon,
        other.urgentWarningOutlineTextIcon,
        t,
      )!,
      urgentWarningSolidSurface: Color.lerp(
        urgentWarningSolidSurface,
        other.urgentWarningSolidSurface,
        t,
      )!,
      urgentWarningSolidTextIcon: Color.lerp(
        urgentWarningSolidTextIcon,
        other.urgentWarningSolidTextIcon,
        t,
      )!,
      urgentWarningTintedTextIcon: Color.lerp(
        urgentWarningTintedTextIcon,
        other.urgentWarningTintedTextIcon,
        t,
      )!,
      urgentWarningTransparentSurface: Color.lerp(
        urgentWarningTransparentSurface,
        other.urgentWarningTransparentSurface,
        t,
      )!,
      warningOutlineColour: Color.lerp(
        warningOutlineColour,
        other.warningOutlineColour,
        t,
      )!,
      warningOutlineTextIcon: Color.lerp(
        warningOutlineTextIcon,
        other.warningOutlineTextIcon,
        t,
      )!,
      warningSolidSurface: Color.lerp(
        warningSolidSurface,
        other.warningSolidSurface,
        t,
      )!,
      warningSolidTextIcon: Color.lerp(
        warningSolidTextIcon,
        other.warningSolidTextIcon,
        t,
      )!,
      warningTintedTextIcon: Color.lerp(
        warningTintedTextIcon,
        other.warningTintedTextIcon,
        t,
      )!,
      warningTransparentSurface: Color.lerp(
        warningTransparentSurface,
        other.warningTransparentSurface,
        t,
      )!,
    );
  }
}

@immutable
class AppIconColors {
  final Color dangerDefault;
  final Color dangerLight;
  final Color dangerStrong;
  final Color dangerXStrong;
  final Color infoDefault;
  final Color infoLight;
  final Color infoStrong;
  final Color infoXStrong;
  final Color limeGreenDefault;
  final Color limeGreenLight;
  final Color limeGreenStrong;
  final Color limeGreenXStrong;
  final Color neutralDefault;
  final Color neutralLight;
  final Color neutralStrong;
  final Color neutralXStrong;
  final Color successDefault;
  final Color successLight;
  final Color successStrong;
  final Color successXStrong;
  final Color urgentWarningDefault;
  final Color urgentWarningLight;
  final Color urgentWarningStrong;
  final Color urgentWarningXStrong;
  final Color warningDefault;
  final Color warningStrong;
  final Color warningXStrong;
  final Color whiteDefault;
  final Color whiteLight;
  final Color whiteStrong;
  final Color whiteXStrong;

  const AppIconColors({
    required this.dangerDefault,
    required this.dangerLight,
    required this.dangerStrong,
    required this.dangerXStrong,
    required this.infoDefault,
    required this.infoLight,
    required this.infoStrong,
    required this.infoXStrong,
    required this.limeGreenDefault,
    required this.limeGreenLight,
    required this.limeGreenStrong,
    required this.limeGreenXStrong,
    required this.neutralDefault,
    required this.neutralLight,
    required this.neutralStrong,
    required this.neutralXStrong,
    required this.successDefault,
    required this.successLight,
    required this.successStrong,
    required this.successXStrong,
    required this.urgentWarningDefault,
    required this.urgentWarningLight,
    required this.urgentWarningStrong,
    required this.urgentWarningXStrong,
    required this.warningDefault,
    required this.warningStrong,
    required this.warningXStrong,
    required this.whiteDefault,
    required this.whiteLight,
    required this.whiteStrong,
    required this.whiteXStrong,
  });

  factory AppIconColors.fromSemantic(Semantic s) {
    return AppIconColors(
      dangerDefault: s.coloursIconDangerDefault,
      dangerLight: s.coloursIconDangerLight,
      dangerStrong: s.coloursIconDangerStrong,
      dangerXStrong: s.coloursIconDangerXStrong,
      infoDefault: s.coloursIconInfoDefault,
      infoLight: s.coloursIconInfoLight,
      infoStrong: s.coloursIconInfoStrong,
      infoXStrong: s.coloursIconInfoXStrong,
      limeGreenDefault: s.coloursIconLimeGreenDefault,
      limeGreenLight: s.coloursIconLimeGreenLight,
      limeGreenStrong: s.coloursIconLimeGreenStrong,
      limeGreenXStrong: s.coloursIconLimeGreenXStrong,
      neutralDefault: s.coloursIconNeutralDefault,
      neutralLight: s.coloursIconNeutralLight,
      neutralStrong: s.coloursIconNeutralStrong,
      neutralXStrong: s.coloursIconNeutralXStrong,
      successDefault: s.coloursIconSuccessDefault,
      successLight: s.coloursIconSuccessLight,
      successStrong: s.coloursIconSuccessStrong,
      successXStrong: s.coloursIconSuccessXStrong,
      urgentWarningDefault: s.coloursIconUrgeentWarningDefault,
      urgentWarningLight: s.coloursIconUrgeentWarningLight,
      urgentWarningStrong: s.coloursIconUrgeentWarningStrong,
      urgentWarningXStrong: s.coloursIconUrgeentWarningXStrong,
      warningDefault: s.coloursIconWarningDefault,
      warningStrong: s.coloursIconWarningStrong,
      warningXStrong: s.coloursIconWarningXStrong,
      whiteDefault: s.coloursIconWhiteDefault,
      whiteLight: s.coloursIconWhiteLight,
      whiteStrong: s.coloursIconWhiteStrong,
      whiteXStrong: s.coloursIconWhiteXStrong,
    );
  }

  AppIconColors lerp(AppIconColors other, double t) {
    return AppIconColors(
      dangerDefault: Color.lerp(dangerDefault, other.dangerDefault, t)!,
      dangerLight: Color.lerp(dangerLight, other.dangerLight, t)!,
      dangerStrong: Color.lerp(dangerStrong, other.dangerStrong, t)!,
      dangerXStrong: Color.lerp(dangerXStrong, other.dangerXStrong, t)!,
      infoDefault: Color.lerp(infoDefault, other.infoDefault, t)!,
      infoLight: Color.lerp(infoLight, other.infoLight, t)!,
      infoStrong: Color.lerp(infoStrong, other.infoStrong, t)!,
      infoXStrong: Color.lerp(infoXStrong, other.infoXStrong, t)!,
      limeGreenDefault: Color.lerp(
        limeGreenDefault,
        other.limeGreenDefault,
        t,
      )!,
      limeGreenLight: Color.lerp(limeGreenLight, other.limeGreenLight, t)!,
      limeGreenStrong: Color.lerp(limeGreenStrong, other.limeGreenStrong, t)!,
      limeGreenXStrong: Color.lerp(
        limeGreenXStrong,
        other.limeGreenXStrong,
        t,
      )!,
      neutralDefault: Color.lerp(neutralDefault, other.neutralDefault, t)!,
      neutralLight: Color.lerp(neutralLight, other.neutralLight, t)!,
      neutralStrong: Color.lerp(neutralStrong, other.neutralStrong, t)!,
      neutralXStrong: Color.lerp(neutralXStrong, other.neutralXStrong, t)!,
      successDefault: Color.lerp(successDefault, other.successDefault, t)!,
      successLight: Color.lerp(successLight, other.successLight, t)!,
      successStrong: Color.lerp(successStrong, other.successStrong, t)!,
      successXStrong: Color.lerp(successXStrong, other.successXStrong, t)!,
      urgentWarningDefault: Color.lerp(
        urgentWarningDefault,
        other.urgentWarningDefault,
        t,
      )!,
      urgentWarningLight: Color.lerp(
        urgentWarningLight,
        other.urgentWarningLight,
        t,
      )!,
      urgentWarningStrong: Color.lerp(
        urgentWarningStrong,
        other.urgentWarningStrong,
        t,
      )!,
      urgentWarningXStrong: Color.lerp(
        urgentWarningXStrong,
        other.urgentWarningXStrong,
        t,
      )!,
      warningDefault: Color.lerp(warningDefault, other.warningDefault, t)!,
      warningStrong: Color.lerp(warningStrong, other.warningStrong, t)!,
      warningXStrong: Color.lerp(warningXStrong, other.warningXStrong, t)!,
      whiteDefault: Color.lerp(whiteDefault, other.whiteDefault, t)!,
      whiteLight: Color.lerp(whiteLight, other.whiteLight, t)!,
      whiteStrong: Color.lerp(whiteStrong, other.whiteStrong, t)!,
      whiteXStrong: Color.lerp(whiteXStrong, other.whiteXStrong, t)!,
    );
  }
}

@immutable
class AppSurfaceColors {
  final Color dangerInput;
  final Color dangerLight;
  final Color dangerLightTransparent;
  final Color dangerStrong;
  final Color dangerTransparent;
  final Color infoInput;
  final Color infoLight;
  final Color infoLightTransparent;
  final Color infoStrong;
  final Color infoTransparent;
  final Color limeGreenInput;
  final Color limeGreenTransparent;
  final Color limeGreenTransparentStrong;
  final Color neutralAlt;
  final Color neutralBackdrop;
  final Color neutralBody;
  final Color neutralContrast;
  final Color neutralInput;
  final Color neutralInputAlt;
  final Color neutralLight;
  final Color neutralLightTransparent;
  final Color neutralStrong;
  final Color neutralTransparent;
  final Color successInput;
  final Color successLight;
  final Color successStrong;
  final Color successTransparent;
  final Color successTransparentLight;
  final Color urgentWarningInput;
  final Color urgentWarningLight;
  final Color urgentWarningLightTransparent;
  final Color urgentWarningStrong;
  final Color urgentWarningTransparent;
  final Color warningInput;
  final Color warningLight;
  final Color warningLightTransparent;
  final Color warningStrong;
  final Color warningTransparent;
  final Color whiteInput;
  final Color whiteLight;
  final Color whiteStrong;

  const AppSurfaceColors({
    required this.dangerInput,
    required this.dangerLight,
    required this.dangerLightTransparent,
    required this.dangerStrong,
    required this.dangerTransparent,
    required this.infoInput,
    required this.infoLight,
    required this.infoLightTransparent,
    required this.infoStrong,
    required this.infoTransparent,
    required this.limeGreenInput,
    required this.limeGreenTransparent,
    required this.limeGreenTransparentStrong,
    required this.neutralAlt,
    required this.neutralBackdrop,
    required this.neutralBody,
    required this.neutralContrast,
    required this.neutralInput,
    required this.neutralInputAlt,
    required this.neutralLight,
    required this.neutralLightTransparent,
    required this.neutralStrong,
    required this.neutralTransparent,
    required this.successInput,
    required this.successLight,
    required this.successStrong,
    required this.successTransparent,
    required this.successTransparentLight,
    required this.urgentWarningInput,
    required this.urgentWarningLight,
    required this.urgentWarningLightTransparent,
    required this.urgentWarningStrong,
    required this.urgentWarningTransparent,
    required this.warningInput,
    required this.warningLight,
    required this.warningLightTransparent,
    required this.warningStrong,
    required this.warningTransparent,
    required this.whiteInput,
    required this.whiteLight,
    required this.whiteStrong,
  });

  factory AppSurfaceColors.fromSemantic(Semantic s) {
    return AppSurfaceColors(
      dangerInput: s.coloursSurfaceDangerInput,
      dangerLight: s.coloursSurfaceDangerLight,
      dangerLightTransparent: s.coloursSurfaceDangerLightTranparent,
      dangerStrong: s.coloursSurfaceDangerStrong,
      dangerTransparent: s.coloursSurfaceDangerTransparent,
      infoInput: s.coloursSurfaceInfoInput,
      infoLight: s.coloursSurfaceInfoLight,
      infoLightTransparent: s.coloursSurfaceInfoLightTransparent,
      infoStrong: s.coloursSurfaceInfoStrong,
      infoTransparent: s.coloursSurfaceInfoTransparent,
      limeGreenInput: s.coloursSurfaceLimeGreenInput,
      limeGreenTransparent: s.coloursSurfaceLimeGreenTransparent,
      limeGreenTransparentStrong: s.coloursSurfaceLimeGreenTransparentStrong,
      neutralAlt: s.coloursSurfaceNeutralAlt,
      neutralBackdrop: s.coloursSurfaceNeutralBackdrop,
      neutralBody: s.coloursSurfaceNeutralBody,
      neutralContrast: s.coloursSurfaceNeutralContrast,
      neutralInput: s.coloursSurfaceNeutralInput,
      neutralInputAlt: s.coloursSurfaceNeutralInputAlt,
      neutralLight: s.coloursSurfaceNeutralLight,
      neutralLightTransparent: s.coloursSurfaceNeutralLightTransparent,
      neutralStrong: s.coloursSurfaceNeutralStrong,
      neutralTransparent: s.coloursSurfaceNeutralTransparent,
      successInput: s.coloursSurfaceSuccessInput,
      successLight: s.coloursSurfaceSuccessLight,
      successStrong: s.coloursSurfaceSuccessStrong,
      successTransparent: s.coloursSurfaceSuccessTransparent,
      successTransparentLight: s.coloursSurfaceSuccessTransparentLight,
      urgentWarningInput: s.coloursSurfaceUrgentWarningInput,
      urgentWarningLight: s.coloursSurfaceUrgentWarningLight,
      urgentWarningLightTransparent:
          s.coloursSurfaceUrgentWarningLightTransparent,
      urgentWarningStrong: s.coloursSurfaceUrgentWarningStrong,
      urgentWarningTransparent: s.coloursSurfaceUrgentWarningTransparent,
      warningInput: s.coloursSurfaceWarningInput,
      warningLight: s.coloursSurfaceWarningLight,
      warningLightTransparent: s.coloursSurfaceWarningLightTransparent,
      warningStrong: s.coloursSurfaceWarningStrong,
      warningTransparent: s.coloursSurfaceWarningTransparent,
      whiteInput: s.coloursSurfaceWhiteInput,
      whiteLight: s.coloursSurfaceWhiteLight,
      whiteStrong: s.coloursSurfaceWhiteStrong,
    );
  }

  AppSurfaceColors lerp(AppSurfaceColors other, double t) {
    return AppSurfaceColors(
      dangerInput: Color.lerp(dangerInput, other.dangerInput, t)!,
      dangerLight: Color.lerp(dangerLight, other.dangerLight, t)!,
      dangerLightTransparent: Color.lerp(
        dangerLightTransparent,
        other.dangerLightTransparent,
        t,
      )!,
      dangerStrong: Color.lerp(dangerStrong, other.dangerStrong, t)!,
      dangerTransparent: Color.lerp(
        dangerTransparent,
        other.dangerTransparent,
        t,
      )!,
      infoInput: Color.lerp(infoInput, other.infoInput, t)!,
      infoLight: Color.lerp(infoLight, other.infoLight, t)!,
      infoLightTransparent: Color.lerp(
        infoLightTransparent,
        other.infoLightTransparent,
        t,
      )!,
      infoStrong: Color.lerp(infoStrong, other.infoStrong, t)!,
      infoTransparent: Color.lerp(infoTransparent, other.infoTransparent, t)!,
      limeGreenInput: Color.lerp(limeGreenInput, other.limeGreenInput, t)!,
      limeGreenTransparent: Color.lerp(
        limeGreenTransparent,
        other.limeGreenTransparent,
        t,
      )!,
      limeGreenTransparentStrong: Color.lerp(
        limeGreenTransparentStrong,
        other.limeGreenTransparentStrong,
        t,
      )!,
      neutralAlt: Color.lerp(neutralAlt, other.neutralAlt, t)!,
      neutralBackdrop: Color.lerp(neutralBackdrop, other.neutralBackdrop, t)!,
      neutralBody: Color.lerp(neutralBody, other.neutralBody, t)!,
      neutralContrast: Color.lerp(neutralContrast, other.neutralContrast, t)!,
      neutralInput: Color.lerp(neutralInput, other.neutralInput, t)!,
      neutralInputAlt: Color.lerp(neutralInputAlt, other.neutralInputAlt, t)!,
      neutralLight: Color.lerp(neutralLight, other.neutralLight, t)!,
      neutralLightTransparent: Color.lerp(
        neutralLightTransparent,
        other.neutralLightTransparent,
        t,
      )!,
      neutralStrong: Color.lerp(neutralStrong, other.neutralStrong, t)!,
      neutralTransparent: Color.lerp(
        neutralTransparent,
        other.neutralTransparent,
        t,
      )!,
      successInput: Color.lerp(successInput, other.successInput, t)!,
      successLight: Color.lerp(successLight, other.successLight, t)!,
      successStrong: Color.lerp(successStrong, other.successStrong, t)!,
      successTransparent: Color.lerp(
        successTransparent,
        other.successTransparent,
        t,
      )!,
      successTransparentLight: Color.lerp(
        successTransparentLight,
        other.successTransparentLight,
        t,
      )!,
      urgentWarningInput: Color.lerp(
        urgentWarningInput,
        other.urgentWarningInput,
        t,
      )!,
      urgentWarningLight: Color.lerp(
        urgentWarningLight,
        other.urgentWarningLight,
        t,
      )!,
      urgentWarningLightTransparent: Color.lerp(
        urgentWarningLightTransparent,
        other.urgentWarningLightTransparent,
        t,
      )!,
      urgentWarningStrong: Color.lerp(
        urgentWarningStrong,
        other.urgentWarningStrong,
        t,
      )!,
      urgentWarningTransparent: Color.lerp(
        urgentWarningTransparent,
        other.urgentWarningTransparent,
        t,
      )!,
      warningInput: Color.lerp(warningInput, other.warningInput, t)!,
      warningLight: Color.lerp(warningLight, other.warningLight, t)!,
      warningLightTransparent: Color.lerp(
        warningLightTransparent,
        other.warningLightTransparent,
        t,
      )!,
      warningStrong: Color.lerp(warningStrong, other.warningStrong, t)!,
      warningTransparent: Color.lerp(
        warningTransparent,
        other.warningTransparent,
        t,
      )!,
      whiteInput: Color.lerp(whiteInput, other.whiteInput, t)!,
      whiteLight: Color.lerp(whiteLight, other.whiteLight, t)!,
      whiteStrong: Color.lerp(whiteStrong, other.whiteStrong, t)!,
    );
  }
}

@immutable
class AppTextColors {
  final Color dangerAccent;
  final Color dangerContent;
  final Color dangerContrast;
  final Color dangerHeading;
  final Color dangerLightContent;
  final Color infoAccent;
  final Color infoContent;
  final Color infoContrast;
  final Color infoHeading;
  final Color infoLightContent;
  final Color limeGreenAccent;
  final Color limeGreenContent;
  final Color limeGreenContrast;
  final Color limeGreenHeading;
  final Color limeGreenLightContent;
  final Color neutralContent;
  final Color neutralContrast;
  final Color neutralHeading;
  final Color neutralLightContent;
  final Color successAccent;
  final Color successContent;
  final Color successContrast;
  final Color successHeading;
  final Color successLightContent;
  final Color urgentWarningAccent;
  final Color urgentWarningContent;
  final Color urgentWarningContrast;
  final Color urgentWarningHeading;
  final Color urgentWarningLightContent;
  final Color warningAccent;
  final Color warningContent;
  final Color warningContrast;
  final Color warningHeading;
  final Color warningLightContent;
  final Color whiteContent;
  final Color whiteHeading;
  final Color whiteLightContent;

  const AppTextColors({
    required this.dangerAccent,
    required this.dangerContent,
    required this.dangerContrast,
    required this.dangerHeading,
    required this.dangerLightContent,
    required this.infoAccent,
    required this.infoContent,
    required this.infoContrast,
    required this.infoHeading,
    required this.infoLightContent,
    required this.limeGreenAccent,
    required this.limeGreenContent,
    required this.limeGreenContrast,
    required this.limeGreenHeading,
    required this.limeGreenLightContent,
    required this.neutralContent,
    required this.neutralContrast,
    required this.neutralHeading,
    required this.neutralLightContent,
    required this.successAccent,
    required this.successContent,
    required this.successContrast,
    required this.successHeading,
    required this.successLightContent,
    required this.urgentWarningAccent,
    required this.urgentWarningContent,
    required this.urgentWarningContrast,
    required this.urgentWarningHeading,
    required this.urgentWarningLightContent,
    required this.warningAccent,
    required this.warningContent,
    required this.warningContrast,
    required this.warningHeading,
    required this.warningLightContent,
    required this.whiteContent,
    required this.whiteHeading,
    required this.whiteLightContent,
  });

  factory AppTextColors.fromSemantic(Semantic s) {
    return AppTextColors(
      dangerAccent: s.coloursTextDangerAccent,
      dangerContent: s.coloursTextDangerContent,
      dangerContrast: s.coloursTextDangerContrast,
      dangerHeading: s.coloursTextDangerHeading,
      dangerLightContent: s.coloursTextDangerLightContent,
      infoAccent: s.coloursTextInfoAccent,
      infoContent: s.coloursTextInfoContent,
      infoContrast: s.coloursTextInfoContrast,
      infoHeading: s.coloursTextInfoHeading,
      infoLightContent: s.coloursTextInfoLightContent,
      limeGreenAccent: s.coloursTextLimeGreenAccent,
      limeGreenContent: s.coloursTextLimeGreenContent,
      limeGreenContrast: s.coloursTextLimeGreenContrast,
      limeGreenHeading: s.coloursTextLimeGreenHeading,
      limeGreenLightContent: s.coloursTextLimeGreenLightContent,
      neutralContent: s.coloursTextNeutralContent,
      neutralContrast: s.coloursTextNeutralContrast,
      neutralHeading: s.coloursTextNeutralHeading,
      neutralLightContent: s.coloursTextNeutralLightContent,
      successAccent: s.coloursTextSuccessAccent,
      successContent: s.coloursTextSuccessContent,
      successContrast: s.coloursTextSuccessContrast,
      successHeading: s.coloursTextSuccessHeading,
      successLightContent: s.coloursTextSuccessLightContent,
      urgentWarningAccent: s.coloursTextUrgentWarningAccent,
      urgentWarningContent: s.coloursTextUrgentWarningContent,
      urgentWarningContrast: s.coloursTextUrgentWarningContrast,
      urgentWarningHeading: s.coloursTextUrgentWarningHeading,
      urgentWarningLightContent: s.coloursTextUrgentWarningLightContent,
      warningAccent: s.coloursTextWarningAccent,
      warningContent: s.coloursTextWarningContent,
      warningContrast: s.coloursTextWarningContrast,
      warningHeading: s.coloursTextWarningHeading,
      warningLightContent: s.coloursTextWarningLightContent,
      whiteContent: s.coloursTextWhiteContent,
      whiteHeading: s.coloursTextWhiteHeading,
      whiteLightContent: s.coloursTextWhiteLightContent,
    );
  }

  AppTextColors lerp(AppTextColors other, double t) {
    return AppTextColors(
      dangerAccent: Color.lerp(dangerAccent, other.dangerAccent, t)!,
      dangerContent: Color.lerp(dangerContent, other.dangerContent, t)!,
      dangerContrast: Color.lerp(dangerContrast, other.dangerContrast, t)!,
      dangerHeading: Color.lerp(dangerHeading, other.dangerHeading, t)!,
      dangerLightContent: Color.lerp(
        dangerLightContent,
        other.dangerLightContent,
        t,
      )!,
      infoAccent: Color.lerp(infoAccent, other.infoAccent, t)!,
      infoContent: Color.lerp(infoContent, other.infoContent, t)!,
      infoContrast: Color.lerp(infoContrast, other.infoContrast, t)!,
      infoHeading: Color.lerp(infoHeading, other.infoHeading, t)!,
      infoLightContent: Color.lerp(
        infoLightContent,
        other.infoLightContent,
        t,
      )!,
      limeGreenAccent: Color.lerp(limeGreenAccent, other.limeGreenAccent, t)!,
      limeGreenContent: Color.lerp(
        limeGreenContent,
        other.limeGreenContent,
        t,
      )!,
      limeGreenContrast: Color.lerp(
        limeGreenContrast,
        other.limeGreenContrast,
        t,
      )!,
      limeGreenHeading: Color.lerp(
        limeGreenHeading,
        other.limeGreenHeading,
        t,
      )!,
      limeGreenLightContent: Color.lerp(
        limeGreenLightContent,
        other.limeGreenLightContent,
        t,
      )!,
      neutralContent: Color.lerp(neutralContent, other.neutralContent, t)!,
      neutralContrast: Color.lerp(neutralContrast, other.neutralContrast, t)!,
      neutralHeading: Color.lerp(neutralHeading, other.neutralHeading, t)!,
      neutralLightContent: Color.lerp(
        neutralLightContent,
        other.neutralLightContent,
        t,
      )!,
      successAccent: Color.lerp(successAccent, other.successAccent, t)!,
      successContent: Color.lerp(successContent, other.successContent, t)!,
      successContrast: Color.lerp(successContrast, other.successContrast, t)!,
      successHeading: Color.lerp(successHeading, other.successHeading, t)!,
      successLightContent: Color.lerp(
        successLightContent,
        other.successLightContent,
        t,
      )!,
      urgentWarningAccent: Color.lerp(
        urgentWarningAccent,
        other.urgentWarningAccent,
        t,
      )!,
      urgentWarningContent: Color.lerp(
        urgentWarningContent,
        other.urgentWarningContent,
        t,
      )!,
      urgentWarningContrast: Color.lerp(
        urgentWarningContrast,
        other.urgentWarningContrast,
        t,
      )!,
      urgentWarningHeading: Color.lerp(
        urgentWarningHeading,
        other.urgentWarningHeading,
        t,
      )!,
      urgentWarningLightContent: Color.lerp(
        urgentWarningLightContent,
        other.urgentWarningLightContent,
        t,
      )!,
      warningAccent: Color.lerp(warningAccent, other.warningAccent, t)!,
      warningContent: Color.lerp(warningContent, other.warningContent, t)!,
      warningContrast: Color.lerp(warningContrast, other.warningContrast, t)!,
      warningHeading: Color.lerp(warningHeading, other.warningHeading, t)!,
      warningLightContent: Color.lerp(
        warningLightContent,
        other.warningLightContent,
        t,
      )!,
      whiteContent: Color.lerp(whiteContent, other.whiteContent, t)!,
      whiteHeading: Color.lerp(whiteHeading, other.whiteHeading, t)!,
      whiteLightContent: Color.lerp(
        whiteLightContent,
        other.whiteLightContent,
        t,
      )!,
    );
  }
}

extension AppThemeColorsContext on BuildContext {
  AppThemeColors get colors => Theme.of(this).extension<AppThemeColors>()!;
}
