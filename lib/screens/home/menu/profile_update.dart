import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/navigate_pop_button.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({super.key});

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Center(
                        child: Image.asset("assets/images/profile_image.png"),
                      ),
                      SizedBox(height: 10.0),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppButton(
                              title: "Change Photo",
                              onPressed: () {},
                              borderRadius: 50.0,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 6.0,
                              ),
                              fontSize: 12.0,
                            ),
                            SizedBox(width: 10.0),
                            AppButton(
                              title: "Remove",
                              prefix: Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 14.0,
                              ),
                              onPressed: () {},
                              borderRadius: 50.0,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 6.0,
                              ),
                              fontSize: 12.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        "Full Name",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      AppFormTextField(
                        readOnly: true,
                        enabledBorderColor: Colors.grey,
                        borderColor: Colors.grey,
                        initialValue: "Mohammed Abrar",
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Email",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      AppFormTextField(
                        readOnly: true,
                        enabledBorderColor: Colors.grey,
                        borderColor: Colors.grey,
                        initialValue: "mohammedabrar312@gmail.com",
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Phone Number",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      AppFormTextField(
                        readOnly: true,
                        enabledBorderColor: Colors.grey,
                        borderColor: Colors.grey,
                        initialValue: "+91 86601 04230",
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "PAN Number",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      AppFormTextField(
                        readOnly: true,
                        enabledBorderColor: Colors.grey,
                        borderColor: Colors.grey,
                        initialValue: "ETXPxxxxxP",
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        padding: EdgeInsets.all(15.0),
                        title: "Update",
                        onPressed: () {},
                        borderRadius: 50.0,
                        prefix: Icon(Icons.update, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 100.0),
                    NavigatePopButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
