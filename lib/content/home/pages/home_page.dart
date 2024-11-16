import 'package:fiscal_validator/content/auth/login/controller/login_controller.dart';
import 'package:fiscal_validator/content/home/controllers/home_controller.dart';
import 'package:fiscal_validator/content/home/widgets/home_header_result_widget.dart';
import 'package:fiscal_validator/content/home/widgets/home_table_result_widget.dart';
import 'package:fiscal_validator/global/widgets/gap_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Get.put(HomeController());
  final _loginController = Get.isRegistered<LoginController>() ? Get.find<LoginController>() : Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lunar Validador XMLs'),
        actions: [
          IconButton(onPressed: () => _loginController.logout(), icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Builder(
            builder: (context) {
              if (!_controller.isLoading.value) {
                return Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeHeaderResultWidget(
                        totalValue: _controller.calculateTotal(_controller.currentXmlList.value),
                        missingNumbers: _controller.missingNumbers.value,
                        controller: _controller,
                      ),
                      Gapv20(),
                      Divider(),
                      HomeTableResultWidget(xmlList: _controller.currentXmlList.value),
                    ],
                  ),
                );
              } else {
                return const SizedBox(
                  width: 150,
                  height: 600,
                  child: Align(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () {
              return FloatingActionButton.extended(
                label: Text(
                  '${_controller.isSentToCloudLoading.value ? 'Enviando' : 'Enviar'} para nuvem',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  child: _controller.isSentToCloudLoading.value
                      ? SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(
                            color: Get.theme.colorScheme.onPrimaryContainer,
                          ),
                        )
                      : const Icon(Icons.cloud),
                ),
                foregroundColor: Get.theme.colorScheme.onPrimaryContainer,
                backgroundColor: Get.theme.colorScheme.primaryContainer,
                onPressed: _controller.isSentToCloudLoading.value ? null : () => _controller.sendToFirebase(),
              );
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton.extended(
            label: const Text(
              'Arquivo',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            icon: const Icon(Icons.archive),
            foregroundColor: Get.theme.colorScheme.onPrimary,
            backgroundColor: Get.theme.colorScheme.primary,
            onPressed: () => _controller.collectArchives(),
          ),
        ],
      ),
    );
  }
}
