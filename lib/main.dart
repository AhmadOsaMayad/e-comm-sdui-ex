import 'package:e_comm_s_d_u_i_ex/core/utils/get_dummy_json.dart';
import 'package:e_comm_s_d_u_i_ex/core/utils/build_app_theme.dart';
import 'package:e_comm_s_d_u_i_ex/core/utils/build_dark_app_theme.dart';
import 'package:e_comm_s_d_u_i_ex/features/filter/presentation/filter_screen.dart';
import 'package:e_comm_s_d_u_i_ex/features/home/presentation/sdui_screen.dart';
import 'package:e_comm_s_d_u_i_ex/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: buildAppTheme(),
      darkTheme: buildDarkAppTheme(),
      debugShowCheckedModeBanner: false,
      // home: const SduiScreen(json: kGetDummyJson),
      home: const FilterFormScreen(formJson: kGetDummySheetJson),
      locale: const Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
