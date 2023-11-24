import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitat/features/apiexample/cubit/api_example_cubit.dart';
import 'package:habitat/infra/l10n/l10n.dart';
import 'package:habitat/infra/servicelocator/service_locator.dart';

class APIExamplePage extends StatelessWidget {
  const APIExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ApiExampleCubit(client: ServiceLocator.get()),
      child: const ApiExampleView(),
    );
  }
}

class ApiExampleView extends StatelessWidget {
  const ApiExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.counterAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ApiExampleCubit>().fetchData();
              },
              child: const Text('Run Request'),
            ),
            const Padding(padding: EdgeInsets.all(8), child: ApiExampleText()),
          ],
        ),
      ),
    );
  }
}

class ApiExampleText extends StatelessWidget {
  const ApiExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    final apiData = context.select((ApiExampleCubit cubit) => cubit.state);

    switch (apiData) {
      case ApiExampleLoading():
        return const CircularProgressIndicator();
      case ApiExampleLoaded():
        return Text(apiData.data.toString());
      case ApiExampleInitial():
        return const Text('Wating for request');
      default:
        return Text('Unhandled state $apiData');
    }
  }
}
