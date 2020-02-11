import 'package:flutter/cupertino.dart';
import 'package:flutter_app_barber/common/device_type.dart';
import 'package:flutter_app_barber/common/sizing_information.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxContsraints) {
      var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxContsraints.maxWidth, boxContsraints.maxHeight));
              

      return builder(context, sizingInformation);
    });
  }
}
