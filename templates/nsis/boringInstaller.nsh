# http://nsis.sourceforge.net/Run_an_application_shortcut_after_an_install
!include multiUserUi.nsh

Function StartApp
  !insertmacro UAC_AsUser_ExecShell "" "$SMPROGRAMS\${PRODUCT_FILENAME}.lnk" "" "" ""
FunctionEnd

!define MUI_FINISHPAGE_RUN
!define MUI_FINISHPAGE_RUN_FUNCTION "StartApp"

!define MUI_CUSTOMFUNCTION_GUIINIT GuiInit

!insertmacro MULTIUSER_PAGE_INSTALLMODE
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

# uninstall pages
!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
#!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Dutch"
#!insertmacro MUI_LANGUAGE "Danish"
#!insertmacro MUI_LANGUAGE "Swedish"
#!insertmacro MUI_LANGUAGE "Norwegian"
#!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
#!insertmacro MUI_LANGUAGE "Finnish"
#!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Russian"
#!insertmacro MUI_LANGUAGE "Portuguese"
#!insertmacro MUI_LANGUAGE "PortugueseBR"
#!insertmacro MUI_LANGUAGE "Polish"
#!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Czech"
#!insertmacro MUI_LANGUAGE "Slovak"
#!insertmacro MUI_LANGUAGE "Croatian"
#!insertmacro MUI_LANGUAGE "Bulgarian"
#!insertmacro MUI_LANGUAGE "Hungarian"
#!insertmacro MUI_LANGUAGE "Thai"
#!insertmacro MUI_LANGUAGE "Romanian"
#!insertmacro MUI_LANGUAGE "Latvian"
#!insertmacro MUI_LANGUAGE "Macedonian"
#!insertmacro MUI_LANGUAGE "Estonian"
#!insertmacro MUI_LANGUAGE "Turkish"
#!insertmacro MUI_LANGUAGE "Lithuanian"
#!insertmacro MUI_LANGUAGE "Slovenian"
#!insertmacro MUI_LANGUAGE "Serbian"
#!insertmacro MUI_LANGUAGE "SerbianLatin"
#!insertmacro MUI_LANGUAGE "Arabic"
#!insertmacro MUI_LANGUAGE "Farsi"
#!insertmacro MUI_LANGUAGE "Hebrew"
#!insertmacro MUI_LANGUAGE "Indonesian"
#!insertmacro MUI_LANGUAGE "Mongolian"
#!insertmacro MUI_LANGUAGE "Luxembourgish"
#!insertmacro MUI_LANGUAGE "Albanian"
#!insertmacro MUI_LANGUAGE "Breton"
#!insertmacro MUI_LANGUAGE "Belarusian"
#!insertmacro MUI_LANGUAGE "Icelandic"
#!insertmacro MUI_LANGUAGE "Malay"
#!insertmacro MUI_LANGUAGE "Bosnian"
#!insertmacro MUI_LANGUAGE "Kurdish"
#!insertmacro MUI_LANGUAGE "Irish"
#!insertmacro MUI_LANGUAGE "Uzbek"
#!insertmacro MUI_LANGUAGE "Galician"
#!insertmacro MUI_LANGUAGE "Afrikaans"
#!insertmacro MUI_LANGUAGE "Catalan"
#!insertmacro MUI_LANGUAGE "Esperanto"
#!insertmacro MUI_LANGUAGE "Asturian"
#!insertmacro MUI_LANGUAGE "Basque"
#!insertmacro MUI_LANGUAGE "Pashto"
#!insertmacro MUI_LANGUAGE "ScotsGaelic"
#!insertmacro MUI_LANGUAGE "Georgian"
#!insertmacro MUI_LANGUAGE "Vietnamese"
#!insertmacro MUI_LANGUAGE "Welsh"
#!insertmacro MUI_LANGUAGE "Armenian"

Function GuiInit
  !insertmacro UAC_PageElevation_OnGuiInit
FunctionEnd