import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission/shared/theme.dart';
import 'package:submission/splitBillDetail_page.dart';

class SplitBillPage extends StatefulWidget {
  const SplitBillPage({Key? key}) : super(key: key);

  @override
  _SplitBillPageState createState() => _SplitBillPageState();
}

class _SplitBillPageState extends State<SplitBillPage> {
  final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();
  List<String> friendName = [];
  List<String> friendID = [];
  List<String> friendEmail = [];
  List<String> friendPhoto = [];
  List<String> friendName2 = [
    'YAHYA ALFON SINAGA',
    'Yahya Alfon',
    'Favian Jiwani'
  ];
  List<String> friendID2 = [
    '49ail8skPUhFsuGvHGKBHfyEDmC2',
    '49ail8skPUhFsuGvHGKBDAsgemC2',
    '15sa1l8skPUhFsuGvHGKBHfyEDmC2'
  ];
  List<String> friendEmail2 = [
    'yahya@gmail.com',
    'yahyatruth@gmail.com',
    'faviannjiwani@gmail.com'
  ];
  List<String> friendPhoto2 = [
    'https://lh3.googleusercontent.com/a-/AOh14GiocS1PVrxkvPU4SpPrMjF3xC3aTYEHV6D1P9h6=s96-c',
    'https://lh3.googleusercontent.com/a-/AOh14GhnbB6AM4Wd8k0YX3ioVbezlujkoYYUtL-XZwuaqA=s96-c',
    'https://lh3.googleusercontent.com/a-/AOh14Giqt39SD3E9LG8FUV8JSIceMM430YhKbrO1yZ-7=s96-c'
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () => MaterialApp(
              scaffoldMessengerKey: snackbarKey,
              home: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: buttonMain,
                  title: Text(
                    "Split Bill",
                    style: appbarTxt,
                  ),
                  centerTitle: true,
                ),
                body: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, top: 20.h, right: 20.w, bottom: 20.h),
                      child: friendName.isEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: HexColor('EBEDEE'),
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.search_rounded),
                                      onPressed: () {},
                                    ),
                                    iconColor: Colors.black,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    labelText: "Search by Username",
                                    labelStyle: searchTxt,
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "All",
                                      style: subTitleText,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add New (+)",
                                        style: addText,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 500.w,
                                  height: 400.h,
                                  child: ListView.builder(
                                    itemCount: friendName2.length,
                                    itemBuilder: (context, int index) {
                                      return Column(
                                        children: [
                                          CheckboxListTile(
                                            value: friendName
                                                .contains(friendName2[index]),
                                            onChanged: (value) {
                                              // setState(() {
                                              //   _checked = value!;
                                              // });
                                              _onSelected(
                                                value!,
                                                friendName2[index],
                                                friendID2[index],
                                                friendEmail2[index],
                                                friendPhoto2[index],
                                              );
                                            },
                                            title: Text(
                                              friendName2[index],
                                              style: titleName,
                                            ),
                                            subtitle: Text(
                                              friendEmail2[index],
                                              style: username,
                                            ),
                                            secondary: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.r),
                                                child: Image.network(
                                                  friendPhoto2[index],
                                                )),
                                            activeColor: buttonMain,
                                            checkColor: Colors.white,
                                            shape: const CircleBorder(),
                                          ),
                                          SizedBox(
                                            height: 18.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: HexColor('EBEDEE'),
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.search_rounded),
                                      onPressed: () {},
                                    ),
                                    iconColor: Colors.black,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    labelText: "Search by Username",
                                    labelStyle: searchTxt,
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Text(
                                  "Selected (${friendName.length})",
                                  style: subTitleText,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 500.w,
                                        height: 90.h,
                                        child: ListView.builder(
                                          itemCount: friendName.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, int index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Stack(
                                                children: [
                                                  Column(
                                                    children: [
                                                      SizedBox(height: 5.h),
                                                      Container(
                                                        width: 60.w,
                                                        height: 83.h,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(15
                                                                            .r),
                                                                child: Image
                                                                    .network(
                                                                  friendPhoto[
                                                                      index],
                                                                  width: 60.w,
                                                                  height: 60.h,
                                                                )),
                                                            Text(
                                                              friendName[index],
                                                              style: nameTxt,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              friendName.remove(
                                                                  friendName[
                                                                      index]);
                                                              friendID.remove(
                                                                  friendID[
                                                                      index]);
                                                              friendEmail.remove(
                                                                  friendEmail[
                                                                      index]);
                                                              friendPhoto.remove(
                                                                  friendPhoto[
                                                                      index]);
                                                            });
                                                          },
                                                          child: Image.asset(
                                                            'assets/images/icon-cross.png',
                                                            width: 22.w,
                                                            height: 22.h,
                                                          ))),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "All",
                                      style: subTitleText,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add New (+)",
                                        style: addText,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 500.w,
                                  height: 200.h,
                                  child: ListView.builder(
                                    itemCount: friendName2.length,
                                    itemBuilder: (context, int index) {
                                      return Column(
                                        children: [
                                          CheckboxListTile(
                                            value: friendName
                                                .contains(friendName2[index]),
                                            onChanged: (value) {
                                              // setState(() {
                                              //   _checked = value!;
                                              // });
                                              _onSelected(
                                                value!,
                                                friendName2[index],
                                                friendID2[index],
                                                friendEmail2[index],
                                                friendPhoto2[index],
                                              );
                                            },
                                            title: Text(
                                              friendName2[index],
                                              style: titleName,
                                            ),
                                            subtitle: Text(
                                              friendEmail2[index],
                                              style: username,
                                            ),
                                            secondary: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.r),
                                                child: Image.network(
                                                  friendPhoto2[index],
                                                )),
                                            activeColor: buttonMain,
                                            checkColor: Colors.white,
                                            shape: const CircleBorder(),
                                          ),
                                          SizedBox(
                                            height: 18.h,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
                              ],
                            ),
                    ),
                  ),
                ),
                bottomSheet: Container(
                  width: 1.sw,
                  height: 70.h,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: HexColor("#9D20FF").withOpacity(0.15),
                      blurRadius: 20,
                      offset: const Offset(0, -4),
                    ),
                  ]),
                  child: Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: SizedBox(
                        width: 320.w,
                        height: 55.h,
                        child: TextButton(
                          onPressed: () {
                            friendName.isEmpty
                                ? snackbarKey.currentState?.showSnackBar(
                                    const SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      margin: EdgeInsets.all(100),
                                      backgroundColor: Colors.red,
                                      content: Text('Pilih minimal 1 teman'),
                                      duration: Duration(seconds: 2),
                                    ),
                                  )
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SplitBillDetailPage(
                                        friendName: friendName,
                                        friendID: friendID,
                                        friendEmail: friendEmail,
                                        friendPhoto: friendPhoto,
                                        userName: 'Marcha',
                                        userID: '49ail8skPUhFsuGvHGKBHfyEDmC2',
                                        userEmail: 'marcha.orbit@gmail.com',
                                        userPhoto:
                                            'https://lh3.googleusercontent.com/a-/AOh14GhHMyAoaXji1i1anunti7-09ucqVVBgNg1DmtiE=s96-c',
                                        isGroup: false,
                                        groupID: '',
                                      ),
                                    ));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(buttonMain),
                          ),
                          child: Text(
                            friendName.isEmpty
                                ? 'Split'
                                : 'Split (${friendName.length})',
                            style: textButton,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }

  void _onSelected(
    bool selected,
    String name,
    String id,
    String email,
    String picture,
  ) {
    if (selected == true) {
      setState(() {
        friendName.add(name);
        friendID.add(id);
        friendEmail.add(email);
        friendPhoto.add(picture);
      });
    } else {
      setState(() {
        friendName.remove(name);
        friendID.remove(id);
        friendEmail.remove(email);
        friendPhoto.remove(picture);
      });
    }
  }
}
