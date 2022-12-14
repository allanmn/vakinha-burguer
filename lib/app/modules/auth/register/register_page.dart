import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:vakinha_do_allan/app/core/ui/vaquinha_ui.dart';
import 'package:vakinha_do_allan/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_do_allan/app/core/ui/widgets/vakinha_textformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cadastro',
                      style: context.textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.primaryColorDark),
                    ),
                    Text(
                      'Preencha os campos abaixo para criar o seu cadastro.',
                      style: context.textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const VakinhaTextformfield(label: 'Nome'),
                    const SizedBox(
                      height: 30,
                    ),
                    const VakinhaTextformfield(label: 'E-mail'),
                    const SizedBox(
                      height: 30,
                    ),
                    const VakinhaTextformfield(label: 'Senha', obscureText: true,),
                    const SizedBox(
                      height: 30,
                    ),
                    const VakinhaTextformfield(label: 'Confirme sua senha', obscureText: true,),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: VakinhaButton(
                        label: 'Cadastrar',
                        width: context.width,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
