import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreens extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated")),
            ElevatedButton(onPressed: null, child: Text("Elevated Disable")),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Elevate Icon"),
              icon: Icon(Icons.access_alarm_outlined),
            ),
            FilledButton(onPressed: () {}, child: Text("Fille")),
            FilledButton.icon(
              onPressed: () {},
              label: Text("Fille Icon"),
              icon: Icon(Icons.accessibility_new),
            ),
            OutlinedButton(onPressed: () {}, child: Text("Outline")),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text("Outline icon"),
              icon: Icon(Icons.terminal),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text"),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text("Text"),
              icon: Icon(Icons.account_box_rounded),
            ),
            CustomButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola Mundo")
          ),
        ),
      ),
    );

  }
}
