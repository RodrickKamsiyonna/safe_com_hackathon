import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:safe_com/api/async_link.dart';
import 'package:safe_com/firebase_options.dart';
import 'package:safe_com/screen/home.dart';
import 'package:sensors_plus/sensors_plus.dart';


late BuildContext context1;

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  accelerometerEvents.listen(
        (AccelerometerEvent event) {
         double threshold = 70;
         double accelerationMagnitude = event.x.abs() + event.y.abs() + event.z.abs();
         if (accelerationMagnitude>threshold){
           SendDistress();
           Fluttertoast.showToast(
             msg: "Distress Sent",
             toastLength: Toast.LENGTH_SHORT,
             gravity: ToastGravity.BOTTOM,
             timeInSecForIosWeb: 1,
             backgroundColor: Colors.black,
             textColor: Colors.white,
             fontSize: 16.0,
           );
         }
    },
    onError: (error) {
      // Logic to handle error
      // Needed for Android in case sensor is not available
    },
    cancelOnError: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;


  final List<Widget> _pages = [
    const HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white ,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            label: 'Search',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.send, size: 30, color: Colors.purple,),
            label: ''
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.people),
            label: 'Friends',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.profile),
            label: 'Profile',
          ),
        ],
      ),
    )
    ;
  }
}