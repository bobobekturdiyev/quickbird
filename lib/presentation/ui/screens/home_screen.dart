import 'package:fluent_ui/fluent_ui.dart';
import 'package:quickbird/presentation/ui/resources/styles.dart';
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
    return ScaffoldPage(
      content: Column(
        children: [
          const WAvatar(),
          const SizedBox(
            height: 16,
          ),
          Text(
            "-",
            style: Styles.getNameStyle(),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "-",
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
              children: const [
                WDetailsItem(name: "Posts", value: "-"),
                WDetailsItem(name: "Followers", value: "-"),
                WDetailsItem(name: "Followings", value: "-"),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 300,
            child: Text(
              "-",
              style: Styles.getBioStyle(),
            ),
          ),
          const SizedBox(height: 16),
          _getForm(),
        ],
      ),
    );
  }

  _getForm() => SizedBox(
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
            Button(
              child: const Text('Load Data'),
              // Set onPressed to null to disable the button
              onPressed: () {
                print('button pressed');
              },
            ),
          ],
        ),
      );
}
