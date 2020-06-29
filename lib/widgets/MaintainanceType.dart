import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servicerequest/DataSource.dart';
import 'package:servicerequest/widgets/CustomContainer.dart';

import '../Constants.dart';
import 'CutomWightRow.dart';

class MaintainanceType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataSource>(builder: (context, dataSource, child) {
      return CustomContainer(
        childern: [
          CutomWightRow(
            onTap: () {
              dataSource.setSelectedMaintainaceMethod(Maintainance.MECHANICAL);
            },
            text: "ميكانيكي",
            iconVisibility: dataSource.maintainance == Maintainance.MECHANICAL
                ? true
                : false,
          ),
          SizedBox(
            child: Divider(
              thickness: 2.0,
              color: Constants.KHelperColor,
            ),
          ),
          CutomWightRow(
            onTap: () {
              dataSource.setSelectedMaintainaceMethod(Maintainance.ELECTRICAL);
            },
            text: "كهربى",
            iconVisibility: dataSource.maintainance == Maintainance.ELECTRICAL
                ? true
                : false,
          ),
          SizedBox(
            child: Divider(
              thickness: 2.0,
              color: Constants.KHelperColor,
            ),
          ),
          CutomWightRow(
            onTap: () {
              dataSource.setSelectedMaintainaceMethod(Maintainance.OTHER);
            },
            text: "اخرى",
            iconVisibility:
                dataSource.maintainance == Maintainance.OTHER ? true : false,
          ),
        ],
      );
    });
  }
}
