import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';
import 'onboarding_view.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    final texts = [
      'Cadastre suas preferências em relação ao novo emprego e mantenha seu perfil atualizado',
      'Aceite as solicitações de entrevista das empresas',
      'Fique atento(a) ao telefone e e-mail cadastrados, é por lá que as empresas entrarão em contato com você!',
      'Agora complete seu cadastro!',
    ];

    return Scaffold(
      backgroundColor: ProzColors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: List.generate(
                texts.length,
                (index) => OnboardingView(
                  index: index,
                  text: texts[index],
                  canJump: index < 2,
                  extraText: index == texts.length - 1
                      ? 'Responda o questionário a seguir para cadastrar suas preferências e receber ofertas das vagas que mais se adequam ao seu perfil.'
                      : null,
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: pageController,
            builder: (context, _) => Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 4.0,
                      backgroundColor: i == (pageController.page ?? 0).round()
                          ? ProzColors.purple
                          : ProzColors.lightGrey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedBuilder(
          animation: pageController,
          builder: (context, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: (pageController.page ?? 0).round() != texts.length - 1
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        (pageController.page ?? 0).round() != 0
                            ? FloatingActionButton(
                                backgroundColor: ProzColors.purple,
                                onPressed: () => pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: ProzColors.white,
                                ),
                              )
                            : const SizedBox.shrink(),
                        FloatingActionButton(
                          heroTag: '',
                          backgroundColor: ProzColors.purple,
                          onPressed: () => pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: ProzColors.white,
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(ProzColors.purple)),
                        onPressed: () => pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('COMEÇAR'),
                            SizedBox(width: 4.0),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
            );
          }),
    );
  }
}
