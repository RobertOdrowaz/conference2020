import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LearnFeaturesButton extends StatefulWidget {
  const LearnFeaturesButton({
    Key key,
  }) : super(key: key);

  @override
  _LearnFeaturesButtonState createState() => _LearnFeaturesButtonState();
}

class _LearnFeaturesButtonState extends State<LearnFeaturesButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Material(
          type: MaterialType.transparency,
          child: Padding(
            padding: EdgeInsets.only(right: 12.0, left: 24.0, top: 24.0),
            child: IconButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                FeatureDiscovery.discoverFeatures(
                  context,
                  const <String>{
                    'show_ticket',
                    'show_how_to_toggle_layout',
                  },
                );
              },
              icon: Icon(LineIcons.question_circle),
            ),
          ),
        ),
      ],
    );
  }
}
