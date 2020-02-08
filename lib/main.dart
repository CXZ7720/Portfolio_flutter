import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Zerogyun.DEV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void htmlOpenLink(String url) {
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          //상단바와 같은 영역에 가리는 것을 막아줌.
          child: Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage('assets/images/profile.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      '김영균 ',
                      style: TextStyle(
                          fontFamily: 'Noto Sans KR',
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Yeonggyun.Kim',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Divider(
                    color: Colors.deepPurpleAccent.shade100,
                  ),
                ),
//                Text(
//                  '웹 풀스택, Flutter 개발자',
//                  style: TextStyle(
//                    fontFamily: 'Noto Sans KR',
//                    color: Colors.purpleAccent,
//                    fontSize: 20.0,
//                    letterSpacing: 2.5,
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
                SizedBox(
                  height: 20,
                  width: 150,
                ),
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          '안녕하세요. 저는 김영균 이라고 합니다.',
                          style: TextStyle(
                            fontFamily: 'SpoqaHanSans',
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              right: 10,
                            ),
                            child: Card(
                              color: Colors.white,
//                            margin:
//                                EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.network(
                                      'assets/images/domain.png',
                                      width: 80,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            textBaseline:
                                                TextBaseline.alphabetic,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.baseline,
                                            children: <Widget>[
                                              Text(
                                                "저는 ",
                                                style: whoami_text,
                                              ),
                                              Text(
                                                " 웹 개발자 ",
                                                style: devkind_text,
                                              ),
                                              Text(
                                                "입니다.",
                                                style: whoami_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Node.js",
                                            style: languange_text,
                                          ),
                                          Text(
                                            "Vue.js",
                                            style: languange_text,
                                          ),
                                          Text(
                                            "PHP",
                                            style: languange_text,
                                          ),
                                          Text(
                                            "Flutter(Dart)",
                                            style: languange_text,
                                          ),
                                          SizedBox(
                                            height: 23,
                                          ),
                                          Text(
                                            "를 이용한\n프로젝트를 진행했습니다.",
                                            textAlign: TextAlign.center,
                                            style: explain_text,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              right: 10,
                            ),
                            child: Card(
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.network(
                                      'assets/images/android.png',
                                      width: 80,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.baseline,
                                            textBaseline:
                                                TextBaseline.alphabetic,
                                            children: <Widget>[
                                              Text(
                                                "저는 ",
                                                style: whoami_text,
                                              ),
                                              Text(
                                                " 앱 개발자 ",
                                                style: devkind_text,
                                              ),
                                              Text(
                                                "입니다.",
                                                style: whoami_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Flutter",
                                            style: languange_text,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("를 이용한\n앱을 만들어",
                                              textAlign: TextAlign.center,
                                              style: explain_text),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "Google Play",
                                            style: TextStyle(
                                              fontFamily: "Product Sans",
                                              color: Color(0xFF808285),
                                              fontSize: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "에 출시하여\n운영중입니다.",
                                            textAlign: TextAlign.center,
                                            style: explain_text,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
             Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'kygha7205@zerogyun.dev',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  htmlOpenLink('https://zerogyun.dev');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'https://zerogyun.dev',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
*
* */
