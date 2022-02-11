import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbird/data/mapper/user_mapper.dart';
import 'package:quickbird/data/network/api/user_service.dart';
import 'package:quickbird/data/repositories/impl_user_repository.dart';
import 'package:quickbird/domain/repositories/user_repository.dart';

import '../../data/network/dio_manager.dart';

class Injector extends StatelessWidget {
  final Widget child;
  const Injector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<Dio>(
        create: (context) => DioManager.getDio([DioManager.logger]),
      ),
      ..._getUserRepositories(),
    ], child: child);
  }

  List<RepositoryProvider> _getUserRepositories() => [
        RepositoryProvider<UserMapper>(
          create: (context) => UserMapper(),
        ),
        RepositoryProvider<UserService>(
          create: (context) => UserService(context.read()),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => ImplUserRepository(
            context.read(),
            context.read(),
          ),
        ),
      ];
}
