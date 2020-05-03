import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Starlit Helpers"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Observer(
            key: Key('list'),
            name: 'list',
            builder: (_) {
              if (controller.selected?.isEmpty ?? true) {
                return Row();
              }
              return AspectRatio(
                aspectRatio: 5 / 2,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: controller.selected.map((icon) {
                    return icon;
                  }).toList(),
                ),
              );
            },
          ),
          Spacer(),
          RaisedButton(
            child: Text('Limpar lista'),
            onPressed: controller.clearForms,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Observer(
                builder: (_) {
                  return getButton(
                      FontAwesomeIcons.exclamationTriangle, COLOR_FORMS.GREEN);
                },
              ),
              Observer(
                builder: (_) {
                  return getButton(
                      FontAwesomeIcons.solidCheckCircle, COLOR_FORMS.YELLOW);
                },
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Observer(
                builder: (_) {
                  return getButton(
                      FontAwesomeIcons.solidClone, COLOR_FORMS.PINK);
                },
              ),
              Observer(
                builder: (_) {
                  return getButton(
                      FontAwesomeIcons.solidCheckSquare, COLOR_FORMS.BLUE);
                },
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }

  IconButton getButton(IconData icon, COLOR_FORMS cf) {
    return IconButton(
      icon: FaIcon(icon),
      iconSize: 40,
      color: controller.formsColor.skip(cf.index).first,
      onPressed: () {
        controller.addform(Container(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            icon,
            size: 28,
            color: controller.formsColor.skip(cf.index).first,
          ),
        ));
      },
    );
  }
}
