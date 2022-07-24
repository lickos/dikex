import 'package:dikex/Utils/constants.dart';
import 'package:dikex/Utils/methods.dart';
import 'package:dikex/Widgets/code_input.dart';
import 'package:dikex/Widgets/main_button.dart';
import 'package:dikex/Widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _codeController = TextEditingController();
  final Methods methods = Methods();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: Lottie.asset(
                          'images/table.json',
                          width: size.width,
                        ),
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: size.height * 0.1),
                        child: const TitleText(),
                      ),
                    ],
                  ),
                ),
              ),
              Constants.mainSpace,
              CodeInput(codeController: _codeController),
              Constants.mainSpace,
              MainButton(onTap: selectPage, text: "ΣΥΝΕΧΙΣΕ"),
              // Constants.mainSpace,
              SizedBox(
                width: size.width,
                child: Lottie.network(
                  'https://assets8.lottiefiles.com/private_files/lf30_ykgoqtuj.json',
                  repeat: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void selectPage() {
    String station = methods.selectStation(_codeController.text.toString());

    if (station == 'nerompogies') {
      Navigator.of(context).pushNamed('nerompogies');
    } else if (station == 'mantarini') {
      Navigator.of(context).pushNamed('mantarini');
    } else {
      Fluttertoast.showToast(
        msg: 'Λανθασμένος Κωδικός. Παρακαλώ προσπαθείστε ξανά',
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }
}
