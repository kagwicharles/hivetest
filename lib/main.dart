import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveflutter/api_repo.dart';
import 'package:hiveflutter/hive_repo.dart';
import 'package:hiveflutter/model.dart';

Future<void> main() async {
  final _apiRepo = APIRepo();

  await Hive.initFlutter();
  Hive.registerAdapter(MenuAdapter());

  // _apiRepo.storeMenuItemsToHive({
  //   "Modules": [
  //     {
  //       "ModuleID": "STARTIMES",
  //       "ModuleName": "Star Times",
  //       "ParentModule": "UTILITY",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/FTB\/V2_3\/startimes.png",
  //       "MerchantID": "007001015",
  //       "DisplayOrder": 3.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "STOPCHEQUE",
  //       "ModuleName": "Stop Cheque",
  //       "ParentModule": "REQUESTS",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/CentenaryApp\/V2_3\/Icons_Stop_Cheque.png",
  //       "MerchantID": "STOPCHEQUE",
  //       "DisplayOrder": 3.000,
  //       "IsDisabled": false,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "BALANCE",
  //       "ModuleName": "Check Balance",
  //       "ParentModule": "",
  //       "ModuleCategory": "FORM",
  //       "MerchantID": "BALANCE",
  //       "DisplayOrder": 3.100,
  //       "IsDisabled": false,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "ZUKU",
  //       "ModuleName": "ZUKU",
  //       "ParentModule": "UTILITY",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/FTB\/V2_3\/zuku.png",
  //       "MerchantID": "ZUKU",
  //       "DisplayOrder": 3.100,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "NWSC",
  //       "ModuleName": "National Water",
  //       "ParentModule": "UTILITY",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/FTB\/V2_3\/national_water.png",
  //       "MerchantID": "007001003",
  //       "DisplayOrder": 4.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "OTHERLOANS",
  //       "ModuleName": "Other Loans",
  //       "ParentModule": "MORE",
  //       "ModuleCategory": "BLOCK",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/CentenaryApp\/V2_3\/Icons_OtherLoans.png",
  //       "DisplayOrder": 4.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "OTHTRANSFER",
  //       "ModuleName": "Other Brac Account",
  //       "ParentModule": "INTERNALTRANSFER",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/CentenaryApp\/V2_3\/Icons_OtherAccount.png",
  //       "MerchantID": "TRANSFER",
  //       "DisplayOrder": 4.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "LOANLPAYMENT",
  //       "ModuleName": "Loan Payment",
  //       "ParentModule": "LOAN",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/FTB\/V2_3\/payment.png",
  //       "MerchantID": "",
  //       "DisplayOrder": 4.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "FTBONLINEBANKING",
  //       "ModuleName": "Online Banking",
  //       "ParentModule": "",
  //       "ModuleCategory": "FORM",
  //       "ModuleURL": "",
  //       "MerchantID": "",
  //       "DisplayOrder": 4.000,
  //       "IsDisabled": false,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //     {
  //       "ModuleID": "INTERNALTRANSFER",
  //       "ModuleName": "Internal Transfer",
  //       "ParentModule": "MAIN",
  //       "ModuleCategory": "BLOCK",
  //       "ModuleURL":
  //           "https:\/\/uat.craftsilicon.com\/image\/FTB\/V2_3\/ift.png",
  //       "MerchantID": "",
  //       "DisplayOrder": 4.000,
  //       "IsOtpRequired": false,
  //       "IsMainMenu": false,
  //       "IsHidden": false
  //     },
  //   ]
  // });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String menus = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final _hiveRepo = HiveRepo();

  @override
  void initState() {
    super.initState();
  }

  Future<List<Menu>> getMenus() async {
    List<Menu> listMenu = [];
    var menu = await _hiveRepo.getAllMenus();
    menu.forEach((item) {
      Menu menuItem = Menu(
          menuID: item.menuID,
          parentMenu: item.parentMenu,
          menuUrl: item.menuUrl,
          menuName: item.menuID);
      print("Menu url:::${menuItem.menuUrl}");
      listMenu.add(menuItem);
    });
    return listMenu;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: FutureBuilder<List<Menu>>(
            future: getMenus(),
            builder: (context, AsyncSnapshot<List<Menu>> snapshot) {
              Widget child = const SizedBox();
              if (snapshot.hasData) {
                child = ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          child: Column(
                            children: [
                              Text(snapshot.data?[index].menuName ?? ""),
                              const SizedBox(
                                height: 4,
                              ),
                              CachedNetworkImage(
                                imageUrl: snapshot.data?[index].menuUrl ?? "",
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ],
                          ));
                    });
              }
              return child;
            })
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
