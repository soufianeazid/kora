import 'package:flutter/material.dart';
import 'package:kora_app/util/body_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({ Key? key }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool? isInstructionView;
  @override
  void initState() {
    isInstructionView = Global.shared.isInstructionView;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child:  Switch(
          value: isInstructionView!,
          onChanged: (bool isOn) {
            print(isOn);
            setState(() {
             isInstructionView = isOn;
             Global.shared.isInstructionView = isOn;
             isOn =!isOn;
              print(isInstructionView);
            });
          },
          activeColor: Style.blueTextColor,
          inactiveTrackColor: Style.blackOpacityColor,
          //inactiveThumbColor: Colors.grey,
        ),
      );
  }
}
class Global{
  static final shared =Global();
  bool isInstructionView = false;
}