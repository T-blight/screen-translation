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
    return FrameGroup(
      displayWidget: _ControllTranslation(),
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
