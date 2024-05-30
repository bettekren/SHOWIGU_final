
import 'package:Showigu_Firebase/Pages/locator.dart';
import 'package:Showigu_Firebase/Pages/login_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../Constants/App_constants.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: <Widget>[
                SizedBox(
                    width: screenWidth,
                    height: screenHeight/2,
                    child: Image.asset(AppImages.showigu)),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text(AppString.label,style:TextStyle(
                    color:AppColors.labelColor,
                    fontSize:  35,
                    fontFamily: 'Corben',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: screenHeight/60),
                  child: const Text(AppString.label2,
                    style:TextStyle(
                        color: AppColors.label2Color,
                        fontSize:  22,
                        fontFamily: 'Corben',
                        fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight/50),
                  child: const Text(AppString.label3, style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 4),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight/50),
                  child: ElevatedButton(
                    child: const Icon(
                        Icons.chevron_right,color: AppColors.white),
                    style:ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 232,182,19)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}