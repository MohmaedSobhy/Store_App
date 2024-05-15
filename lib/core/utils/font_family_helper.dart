class FontFamilyHelper {
  FontFamilyHelper._();

  static final FontFamilyHelper fontFamily = FontFamilyHelper._();

  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';

  String currentFont() {
    //TODO when you switch between arabic and English
    return arabicFont;
  }
}
