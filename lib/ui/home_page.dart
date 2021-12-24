import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:msa_internship/components/name_icon_row.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
    {'name': 'اردو', 'locale': const Locale('ur', 'IN')},
  ];

// Language update
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

// Alert Dialog box
  buildLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: const Text('Choose Your Language'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text(locale[index]['name']),
                      onTap: () {
                        // print(locale[index]['name']);
                        updateLanguage(locale[index]['locale']);
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.blue,
                  );
                },
                itemCount: locale.length),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoField(subTitle: 'name1'.tr, icon: 'assets/dart.svg'),
            infoField(subTitle: 'name2'.tr, icon: 'assets/java.svg'),
            infoField(subTitle: 'name3'.tr, icon: 'assets/javascript.svg'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          buildLanguageDialog(context);
        },
        label: Text('changelang'.tr),
      ),
    );
  }
}
