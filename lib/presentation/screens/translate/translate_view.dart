import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tombozi/core/constants/app_font.dart';
import 'package:tombozi/extensions/context_ext.dart';
import 'package:tombozi/l10n/app_localizations.dart';
import 'package:tombozi/presentation/widgets/frame/frame_group.dart';
import 'package:tombozi/presentation/widgets/trans/language_switch_widget.dart';

import '../../../DI/injection.dart';
import '../../bloc/translate/text_trans/text_bloc.dart';
import '../../bloc/translate/text_trans/text_event.dart';
import '../../bloc/translate/text_trans/text_state.dart';
import '../../widgets/app_bar/base_app_bar.dart';
import '../../widgets/frame/loading_widget.dart';
import '../../widgets/navigation_bar.dart/navigation_bar_ui.dart';
import '../home/home_view.dart';

class TranslateView extends StatelessWidget {
  final NavigationBarIndex navBarIndex = NavigationBarIndex();

  TranslateView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<TextBloc>(),
      child: Scaffold(
        appBar: BaseAppBar(context: context, pageIndex: 0),
        body: _TranslateBody(),
        bottomNavigationBar: NavigationBarUi(nav: navBarIndex),
      ),
    );
  }
}

class _TranslateBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FrameGroup(displayWidget: _TranslateFrame(), weightWidget: 1),
        Expanded(child: _TranslateHistory()),
      ],
    );
  }
}

class _TranslateHistory extends StatelessWidget {
  Widget textTranslatedTag(String originalText, String translatedText) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 0, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            originalText,
            style: TextStyle(
              fontSize: AppFont.textStyleCardTrans,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10),
          Text(
            translatedText,
            style: TextStyle(fontSize: AppFont.textStyleCardTrans - 1),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget translatedTag(String originalText, String translatedText) {
    return FrameGroup(
      displayWidget: Row(
        children: [
          Expanded(
            flex: 14,
            child: Container(
              alignment: Alignment.centerLeft,
              child: textTranslatedTag(originalText, translatedText),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Icon(Icons.star_outline, size: 24),
            ),
          ),
        ],
      ),
      vertical: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return translatedTag(
          index.toString() +
              "kekkkkkkffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffkkffffffffffffsssssssssssssssssssfffffffff",
          "faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadddddddddddddddddddddddddddddddddddd",
        );
      },
    );
  }
}

class _TranslateFrame extends StatelessWidget {
  Widget fillButtonCus({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
        minimumSize: Size.zero,
        elevation: 5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon, size: 18), SizedBox(width: 3), Text(label)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _rowShimmer;
    return FrameGroup(
      displayWidget: Column(
        children: [
          LanguageSwitchWidget(),
          Divider(),
          // to widget trans
          TextField(
            minLines: 1,
            maxLines: 10,
            onChanged: (value) {
              context.read<TextBloc>().add(TextEvent.textChanged(value));
            },
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            ),
          ),          BlocBuilder<TextBloc, TextState>(
            builder: (context, state) {
              return Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 36),
                child: Opacity(
                  opacity: 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.when(
                        start: () => Text(
                          context.loc.clickToTrans,
                          style: TextStyle(
                            fontSize: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.fontSize,
                          ),
                        ),
                        loading: () => const LoadingWidget(),
                        error: (msg) => Text(msg),
                        success: (result) => Text(result),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          //auxiliary features(paste,camera, image)
          Container(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.3,
              child: Align(
                alignment: Alignment.centerRight,
                child: Wrap(
                  spacing: 4,
                  children: [
                    fillButtonCus(
                      onPressed: () {},
                      icon: Icons.paste,
                      label: context.loc.buttonTransScreenPaste,
                    ),
                    fillButtonCus(
                      onPressed: () {},
                      icon: Icons.image,
                      label: context.loc.buttonTransScreenImage,
                    ),
                    fillButtonCus(
                      onPressed: () {},
                      icon: Icons.camera_alt_outlined,
                      label: context.loc.buttonTransScreenCamera,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
