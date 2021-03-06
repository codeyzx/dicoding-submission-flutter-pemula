import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:submission/shared/theme.dart';
import 'package:submission/splitBill_page.dart';

class SplitBillSuccess extends StatelessWidget {
  const SplitBillSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/succes-top.png')),
          Center(
            child: Image.asset(
              'assets/images/request-success.png',
              width: 226.65.w,
              height: 184.54.h,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
              child: Text(
            "Hooray!",
            style: successTitle,
          )),
          Center(
              child: Text(
            "Split Bill is Successful!",
            style: subTitleSuccess,
          )),
          SizedBox(
            height: 44.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: SizedBox(
                width: 320.w,
                height: 55.h,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplitBillPage(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(buttonMain),
                  ),
                  child: Text(
                    'Kembali ke Beranda',
                    style: textButton,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              child: SizedBox(
                width: 320.w,
                height: 55.h,
                child: OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        style: BorderStyle.solid,
                        color: buttonMain,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SplitBillPage(),
                        ));
                  },
                  child: Text(
                    "Split Bill Lagi",
                    style: textButtonSuccess,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
