import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:go_router/go_router.dart';

import 'amplifyconfiguration.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:provider/provider.dart';

import 'chat_screen.dart';
import 'home_screen.dart';
import 'message_repository.dart';


final AmplifyLogger _logger = AmplifyLogger('EOTA');
Future main() async {

  //timeDilation = 5.0;=';;
  runApp(
     App(),

  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  bool _isConfigured = false;

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyAPI(),
        /*
        AmplifyAuthCognito(

          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions:
            // ignore: invalid_use_of_visible_for_testing_member
            MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),

         */

      ]);

      await Amplify.configure(amplifyconfig);
      setState(() {
        _isConfigured = true;
      });
      _logger.debug('Successfully configured Amplify');

      Amplify.Hub.listen(HubChannel.Auth, (event) {
        _logger.info('Auth Event: $event');
      });
    } on Exception catch (e, st) {
      _logger.error('Configuring Amplify failed', e, st);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Echoes Of The Abyss',
        /*
        theme: ThemeData(
          fontFamily: 'Syne-Regular',
        ),

         */
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),

        //  themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouter(routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
            _isConfigured
                ?  ChangeNotifierProvider(create: (context) => MessageRepository.instance(),
             // child: ChatScreen(),
              child: HomeScreen(),
            )


                : const Scaffold(
                body:Center(
                  child: CircularProgressIndicator(),
                )
            )
          ),

        ]));
  }
}
