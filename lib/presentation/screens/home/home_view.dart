import 'package:flutter/material.dart';
import 'package:tombozi/core/constants/app_colors.dart';
import 'package:tombozi/presentation/widgets/app_bar/base_app_bar.dart';
import 'package:tombozi/presentation/widgets/frame/frame_group.dart';

final Color _clr = AppColors.translateButtonColor;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        context: context,
        pageIndex: 0,
      ),
      body: const _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        FrameGroup(
          displayWidget: _ControllTranslation(),
        ),
        FrameGroup(
          displayWidget: _TranslationModeWidget(),
          vertical:7
        ),
      ]
    );
  }
}

class _ControllTranslation extends StatelessWidget{
  const _ControllTranslation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FrameGroup(
      displayWidget: Column(
        children: [
          _TranslationSettingsLanguageWidget(),
          _TranslationEngineSelectorWidget(),
          Divider(),
          TranslationModeWidget(),
        ],
      ),
    );
  }

}

class _TranslationSettingsLanguageWidget extends StatelessWidget {
  const _TranslationSettingsLanguageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: FrameGroup(
            displayWidget: Text("Tiếng Việt", textAlign: TextAlign.center),
            elevation: 1,
            asButton: true,
            onPressed: () {},
            color: _clr,
            weightWidget: 1,
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Icon(Icons.swap_horiz_sharp, color: Colors.orange),
          ),
        ),
        Expanded(
          flex: 4,
          child: FrameGroup(
            displayWidget: Text("Tiếng Việt", textAlign: TextAlign.center),
            asButton: true,
            onPressed: () {},
            color: _clr,
            elevation: 1,
            weightWidget: 1,
          )
        ),
      ],
    );
  }
}

class _TranslationEngineSelectorWidget extends StatelessWidget{
  _TranslationEngineSelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: FrameGroup(
        displayWidget: Text("Tiếng Việt", textAlign: TextAlign.start),
        asButton: true,
        onPressed: () {},
        color: _clr,
        elevation: 1,
        weightWidget: 1,
      ),
    );
  }
}

class TranslationModeWidget extends StatefulWidget {
  const TranslationModeWidget({Key? key}) : super(key: key);

  @override
  State<TranslationModeWidget> createState() => _TranslationModeWidgetState();
}

class _TranslationModeWidgetState extends State<TranslationModeWidget> {
  double size = 0.45;

  void display() {
    print("Button clicked");

    setState(() {
      size = 1 - size;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int leftFlex = ((1 - size) * 10).round();
    final int rightFlex = (size * 10).round();

    return FrameGroup(
      displayWidget: Row(
        children: [
          Expanded(
            flex: leftFlex,
            child: FrameGroup(
              displayWidget: const Text("Nhỏ hơn"),
              color: Colors.black87,
              asButton: true,
              vertical: 0,
              onPressed: display,
            ),
          ),
          Expanded(
            flex: rightFlex,
            child: FrameGroup(
              displayWidget: const Text("Lớn hơn"),
              color: Colors.black87,
              asButton: true,
              vertical: 0,
              onPressed: display,
            ),
          ),
        ],
      ),
      weightWidget: 0.8,
      vertical: 0,
    );
  }
}

// ///display lookup
class _TranslationModeWidget extends StatelessWidget {
  _TranslationModeWidget({Key? key}) : super(key: key);

  final Color colorBorder = Colors.blue[200]!;

  @override
  Widget build(BuildContext context) {
    Widget _modeBarWidget(String title, String subTitle) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: colorBorder, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize ?? 16,
            ),
          ),
          leading: CircleAvatar(child: Text('A')),
          subtitle: Text(
            subTitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          trailing: Icon(Icons.favorite_rounded),
        ),
      );
    }

    return Column(
      children: [
        FrameGroup(
          displayWidget: Text(
            "Chế độ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize ?? 18,
            ),
          ),
        ),
        Divider(height: 5),
        FrameGroup(
          displayWidget: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FrameGroup(
                displayWidget: _modeBarWidget("Tiêu đề", "Phụ đề / Supporting text"),
                weightWidget: 0.92,
                vertical: 3,
              ),
              FrameGroup(
                displayWidget: _modeBarWidget("Tiêu đề", "Phụ đề / Supporting text"),
                weightWidget: 0.92,
                vertical: 3,
              ),
              FrameGroup(
                displayWidget: _modeBarWidget("Tiêu đề", "Phụ đề / Supporting text"),
                weightWidget: 0.92,
                vertical: 3,
              ),
            ]
          ),
          weightWidget: 1,
        ),
      ],
    );
  }
}


