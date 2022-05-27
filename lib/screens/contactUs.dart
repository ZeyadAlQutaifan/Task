import 'package:flutter/material.dart';
import 'package:untitled2/widgets/circle_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../colors/app_colors.dart';
import '../constant/constant.dart';
import '../widgets/app_text_style.dart';
import '../widgets/text_input_form.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _subjectController = TextEditingController();
TextEditingController _messageController = TextEditingController();

class _ContactUsState extends State<ContactUs> {
  void counter() async {
    if (kCount < 99) {
      await Future.delayed(const Duration(minutes: 1));
      kCount += 1;
    } else if (kCount >= 99) {
      kCount = 0;
      await Future.delayed(const Duration(minutes: 1));
      kCount += 1;
    }
    setState(() {});
  }

  List<IconData> contactUsIcons = [
    Icons.location_on,
    Icons.call,
    Icons.email,
    Icons.chat
  ];
  List<String> contactUsText = [
    'موقعنا',
    'اتصل بنا',
    'البريد الاكتروني',
    'دردشة'
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: AppText(
                  text: 'لملاحظاتكم',
                  color: Colors.black,
                  size: 18,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormFieldWidget(
                      label: 'الاسم كامل *',
                      controller: _nameController,
                      type: TextInputType.text,
                    ),
                    TextFormFieldWidget(
                      label: 'البريد الالكتروني *',
                      controller: _emailController,
                      type: TextInputType.emailAddress,
                    ),
                    TextFormFieldWidget(
                      label: 'الموضوع *',
                      controller: _subjectController,
                      type: TextInputType.text,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: 'الرسالة *',
                            color: Colors.grey.withOpacity(0.9),
                            size: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: height,
                                maxWidth: width / 1.2,
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                minLines: 2,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                    //borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    // borderRadius: BorderRadius.circular(15),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1.5,
                                    ),
                                    //borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 1.7, top: 10),
                child: MaterialButton(
                  color: AppColors.redColor,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: AppText(
                    text: 'ارسل الرسالة',
                    color: Colors.white,
                    size: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () => null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: 'تابعنا على',
                      color: Colors.black,
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Container(
                      height: height / 20,
                      width: width / 1.7,
                      alignment: Alignment.center,
                      child: Row(
                        children:  [
                          CustomCircleIcon(
                            iconData: const Icon(FontAwesomeIcons.instagram ,color: Colors.grey,),
                            backColor: Colors.grey.shade300,
                          ),
                          CustomCircleIcon(
                            iconData: const Icon(FontAwesomeIcons.linkedin ,color: Colors.grey,),
                            backColor: Colors.grey.shade300,
                          ),
                          CustomCircleIcon(
                            iconData: const Icon(FontAwesomeIcons.twitter ,color: Colors.grey,),
                            backColor: Colors.grey.shade300,
                          ),

                          CustomCircleIcon(
                            iconData: Icon(FontAwesomeIcons.facebook ,color: Color(0xFFFFFFFF),),

                            backColor: Color(0xFF5179EC),
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: height /5,
                width: width,
                padding: EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  borderRadius: const BorderRadius.only(
                    topLeft: const Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: 'ابقى على تواصل',
                      color: Colors.black,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: height / 10,
                      width: width / 1.3,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 30),
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: contactUsIcons.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        width: 1.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Container(
                                      width: 40,
                                      height: 35,
                                      margin: const EdgeInsets.all(7),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Icon(
                                        contactUsIcons[index],
                                        color: AppColors.goldColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  AppText(
                                    text: contactUsText[index],
                                    color: Colors.black54,
                                    size: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
