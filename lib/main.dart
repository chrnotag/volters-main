import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:volters/screens/tela01_tantan.dart';
import 'package:volters/tema.dart';
import 'package:volters/uteis/firebase_options.dart';
import 'package:volters/visao_usuario.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([
    GoogleProvider(clientId: DefaultFirebaseOptions.web.appId),
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<VisaoUsuario>(create: (_) => VisaoUsuario()),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('pt', 'BR')],
        path: 'assets/translations',
        fallbackLocale: const Locale('pt', 'BR'),
        child: const VoltersApp(),
      ),
    ),
  );
}

class VoltersApp extends StatelessWidget {
  const VoltersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volters App',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: TemaVolters.tema,
      debugShowCheckedModeBanner: false,
      home: Tela01Tandan(),
    );
  }
}
// Para atualizar os texto do EasyLocation, executar no terminal o comando:
//       flutter pub run easy_localization:generate -f keys -S ./assets/translations/  -O lib/ -o locale_keys.g.dart
