import 'package:emart_seller/const/const.dart';

Widget productDropdown(){
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      hint: normalText(text: "Select Category", color: fontGrey),
      value: null,
      isExpanded: true,

      items: [],
      onChanged: (value){},
    ),
  ).box.white.padding(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.make();
}