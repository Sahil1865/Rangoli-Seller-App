import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/auth_screen/login_screen.dart';
import 'package:emart_seller/widgets/text_style.dart';

import 'edit_profilescreen.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text:  settings, size: 16.0),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=> EditProfileScreen());
          },icon: const Icon(Icons.edit)),
          TextButton(onPressed: (){
            Get.to(()=>LoginScreen());
          }, child: normalText(text: logout),)
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person).box.clip(Clip.antiAlias).border(width: 2, color: lightGrey).roundedFull.make(),
            title: boldText(text: "Vendor Name"),
            subtitle: normalText(text: "vendoremail@gmail.com"),
          ),
          Divider(),
          10.heightBox,
          Padding(
            padding: EdgeInsets.all(8.0),
              child: Column(
                children: List.generate(profileMenuButtons.length, (index)=> ListTile(
                  leading: Icon(profileMenuIcons[index], color: white,),
                  title: normalText(text: profileMenuButtons[index]),
                )),
              ))
        ]
      ),
    );
  }
}