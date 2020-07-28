import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitalis/app/modules/cadastro/cadastro_controller.dart';
import 'package:vitalis/app/theme/app_colors_theme.dart';

class CustomRadioSair extends Container {
  final CadastroController controller = Get.find<CadastroController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Row(
            children: [
              Expanded(
                child: FlipCard(
                  direction: FlipDirection.HORIZAONTAL,
                  front: Radio(
                    value: 0,
                    groupValue: controller.sairIndex,
                    onChanged: (value) =>
                        controller.onChangedSair(value),
                  ),
                  back: Text(controller.sair[0], style:TextStyle(fontWeight: controller.sairIndex == 0 ? FontWeight.bold : null,)),
                ),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 0,
                    groupValue: controller.sairIndex,
                    onChanged: (value) =>
                        controller.onChangedSair(value),
                  ),
                  Text(controller.sair[0], style:TextStyle(fontWeight: controller.sairIndex == 0 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 1,
                    groupValue: controller.sairIndex,
                    onChanged: (value) =>
                        controller.onChangedSair(value),
                  ),
                  Text(controller.sair[1], style:TextStyle(fontWeight: controller.sairIndex == 1 ? FontWeight.bold : null,)),
                ]),
              ),
              Expanded(
                child: Column(children: [
                  Radio(
                    value: 2,
                    groupValue: controller.sairIndex,
                    onChanged: (value) =>
                        controller.onChangedSair(value),
                  ),
                  Text(controller.sair[2], style:TextStyle(fontWeight: controller.sairIndex == 2 ? FontWeight.bold : null,)),

                ]),
              ),
            ],
          )),
    );
  }
}
