import 'package:estudo_modulo/modules/core/providers/application_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AwesomePage extends StatelessWidget {
  final applicationProvider = Modular.get<ApplicationProvider>();

  AwesomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Awesome page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            AnimatedBuilder(
                animation: applicationProvider,
                builder: (_, __) {
                  return Text(
                    applicationProvider.counter.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
            TextButton(
              onPressed: applicationProvider.incrementCounter,
              child: const Text('Adicionar'),
            ),
            TextButton(
              onPressed: applicationProvider.decrementCounter,
              child: const Text('Remover'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/other');
              },
              child: const Text('Ir para other page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: const Text('Ir para home'),
            ),
          ],
        ),
      ),
    );
  }
}
