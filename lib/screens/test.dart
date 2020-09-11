// // Copyright 2019 The Flutter team. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'package:flutter/material.dart';
//
// import 'package:gallery/l10n/gallery_localizations.dart';
//
// // Pressing the PopupMenuButton on the right of this item shows a menu
// // whose items have checked icons that reflect this app's state.
// class _ChecklistMenuDemo extends StatefulWidget {
//   const _ChecklistMenuDemo({Key key, this.showInSnackBar}) : super(key: key);
//
//   final void Function(String value) showInSnackBar;
//
//   @override
//   _ChecklistMenuDemoState createState() => _ChecklistMenuDemoState();
// }
//
// class _ChecklistMenuDemoState extends State<_ChecklistMenuDemo> {
//   List<CheckedValue> _checkedValues;
//
//   @override
//   void initState() {
//     super.initState();
//     _checkedValues = [CheckedValue.three];
//   }
//
//   void showCheckedMenuSelections(BuildContext context, CheckedValue value) {
//     if (_checkedValues.contains(value)) {
//       setState(() {
//         _checkedValues.remove(value);
//       });
//     } else {
//       setState(() {
//         _checkedValues.add(value);
//       });
//     }
//
//     widget.showInSnackBar(
//       GalleryLocalizations.of(context).demoMenuChecked(
//         _checkedValues.map((value) => checkedValueToString(context, value)),
//       ),
//     );
//   }
//
//   String checkedValueToString(BuildContext context, CheckedValue value) => {
//     CheckedValue.one: GalleryLocalizations.of(context).demoMenuOne,
//     CheckedValue.two: GalleryLocalizations.of(context).demoMenuTwo,
//     CheckedValue.three: GalleryLocalizations.of(context).demoMenuThree,
//     CheckedValue.four: GalleryLocalizations.of(context).demoMenuFour,
//   }[value];
//
//   bool isChecked(CheckedValue value) => _checkedValues.contains(value);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//           GalleryLocalizations.of(context).demoMenuAnItemWithAChecklistMenu),
//       trailing: PopupMenuButton<CheckedValue>(
//         padding: EdgeInsets.zero,
//         onSelected: (value) => showCheckedMenuSelections(context, value),
//         itemBuilder: (context) => <PopupMenuItem<CheckedValue>>[
//           CheckedPopupMenuItem<CheckedValue>(
//             value: CheckedValue.one,
//             checked: isChecked(CheckedValue.one),
//             child: Text(
//               checkedValueToString(context, CheckedValue.one),
//             ),
//           ),
//           CheckedPopupMenuItem<CheckedValue>(
//             value: CheckedValue.two,
//             enabled: false,
//             checked: isChecked(CheckedValue.two),
//             child: Text(
//               checkedValueToString(context, CheckedValue.two),
//             ),
//           ),
//           CheckedPopupMenuItem<CheckedValue>(
//             value: CheckedValue.three,
//             checked: isChecked(CheckedValue.three),
//             child: Text(
//               checkedValueToString(context, CheckedValue.three),
//             ),
//           ),
//           CheckedPopupMenuItem<CheckedValue>(
//             value: CheckedValue.four,
//             checked: isChecked(CheckedValue.four),
//             child: Text(
//               checkedValueToString(context, CheckedValue.four),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
