import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final heading = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final title = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static final body = GoogleFonts.poppins(fontSize: 16, color: AppColors.grey);

  static final button = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
