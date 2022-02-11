import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbird/domain/usecases/user/user_use_case.dart';
import 'package:quickbird/presentation/ui/resources/styles.dart';
import 'package:quickbird/presentation/ui/screens/home/home_screen_cubit.dart';
import 'package:quickbird/presentation/ui/widgets/avatar.dart';
import 'package:quickbird/presentation/ui/widgets/w_details_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit(
        UserUseCase(
          context.read(),
        ),
      ),
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          return ScaffoldPage(
            content: Column(
              children: [
                WAvatar(
                  image: state is Loaded ? state.user.image : null,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  state is Loaded ? state.user.fullName : "-",
                  style: Styles.getNameStyle(),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  state is Loaded ? "@${state.user.username}" : "-",
                  style: Styles.getUsernameStyle(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Divider(size: 300),
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WDetailsItem(
                        name: "Posts",
                        value: (state is Loaded
                            ? state.user.posts.toString()
                            : "-"),
                      ),
                      WDetailsItem(
                        name: "Followers",
                        value: (state is Loaded
                            ? state.user.followers.toString()
                            : "-"),
                      ),
                      WDetailsItem(
                        name: "Followings",
                        value: (state is Loaded
                            ? state.user.followings.toString()
                            : "-"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: Text(
                    state is Loaded ? state.user.bio.toString() : "-",
                    style: Styles.getBioStyle(),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextBox(
                          controller: usernameController,
                          placeholder: 'Enter the username',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Visibility(
                        visible: state is! Loading,
                        child: Button(
                          child: const Text('Load Data'),
                          // Set onPressed to null to disable the button
                          onPressed: () {
                            var username = usernameController.text;
                            if (state is! Loading && username.isNotEmpty) {
                              print('button pressed');
                              context
                                  .read<HomeScreenCubit>()
                                  .loadUser(username);
                              usernameController.text = "";
                            }
                          },
                        ),
                        replacement: const CupertinoActivityIndicator(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
