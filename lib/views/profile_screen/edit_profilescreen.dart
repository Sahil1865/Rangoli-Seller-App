import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:emart_seller/widgets/custom_textfield.dart';

import '../../widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const  EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text:  editProfile, size: 16.0),
        actions: [TextButton(onPressed: (){
          Get.to(()=>ProfileScreen());
        }, child: normalText(text: save))],
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Icon(Icons.person, size: 150,).box.clip(Clip.antiAlias).border(width: 2, color: lightGrey).roundedFull.make(),
          10.heightBox,
          const Divider(),
          customTextField(label: name, hint: "eg. Example Name"),
          5.heightBox,
          customTextField(label: password, hint: passwordHint),
          5.heightBox,
          customTextField(label: confirmPass, hint: passwordHint),],
      ),
      ),
    );
  }
}