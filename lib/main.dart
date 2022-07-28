import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vakinha_do_allan/app/core/ui/vaquinha_ui.dart';
import 'package:vakinha_do_allan/app/routes/auth_routers.dart';
import 'package:vakinha_do_allan/app/routes/splash_routers.dart';

void main() {
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
      ],
      theme: VakinhaUI.theme,
    );
  }
}
