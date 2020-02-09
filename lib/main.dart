import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:universal_html/prefer_sdk/html.dart' as html;
import 'hover_extensions.dart';

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
  void htmlOpenLink(url) {
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
      backgroundColor: Colors.white,
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
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Yeonggyun.Kim',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                  width: 150,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Divider(
                          color: Colors.deepPurpleAccent.shade100,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          HandCursor(
                            child: GestureDetector(
                              onTap: () {
                                htmlOpenLink("https://github.com/CXZ7720");
                              },
                              child: Image.network(
                                //github logo
                                "assets/images/github-logo.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HandCursor(
                            child: GestureDetector(
                              onTap: () {
                                htmlOpenLink(
                                    "https://www.linkedin.com/in/%EC%98%81%EA%B7%A0-%EA%B9%80-137a32116/");
                              },
                              child: Image.network(
                                //Linked in logo
                                "assets/images/linkedin-logo.png",
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: HandCursor(
                              child: GestureDetector(
                                onTap: () {
                                  htmlOpenLink('mailto:admin@zerogyun.dev');
                                },
                                child: Image.network(
                                  //email logo
                                  "assets/images/mail.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: HandCursor(
                              child: GestureDetector(
                                onTap: () {
                                  htmlOpenLink('https://zerogyun.dev');
                                },
                                child: Image.network(
                                  //email logo
                                  "assets/images/homepage.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                  color: Color(0xFF66DAFF),
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
                                          HandCursor(
                                            child: GestureDetector(
                                              onTap: () {
                                                htmlOpenLink(
                                                    'https://play.google.com/store/apps/details?id=com.busHanyang.hybus');
                                              },
                                              child: Text(
                                                "Google Play",
                                                style: TextStyle(
                                                  fontFamily: "Product Sans",
                                                  color: Color(0xFF808285),
                                                  fontSize: 25,
                                                ),
                                              ),
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
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "WEB 프로젝트",
                        style: subtitle_text,
                      ),
                      Text(
                        "그동안 진행했던 WEB 프로젝트입니다.",
                        style: subtitle_small_text,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "버스하냥, BusHanyang",
                                style: project_text,
//                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "한양대학교 ERICA캠퍼스 내 운행중인\n셔틀버스의 도착정보를 실시간으로 안내해주는 서비스.",
                                style: TextStyle(
                                  fontFamily: "Spoqa Han Sans",
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "사용된 기술",
                                style: TextStyle(
                                  fontFamily: "Spoqa Han Sans",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Vue.js, Node.js, Module Testing, CI/CD(Jenkins), Docker\nGoogle Cloud Platform",
                                style: TextStyle(
                                  fontFamily: "Spoqa Han Sans",
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "프로젝트 링크",
                                style: TextStyle(
                                  fontFamily: "Spoqa Han Sans",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Image.network(
                                    "assets/images/github-logo.png",
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  HandCursor(
                                    child: GestureDetector(
                                      onTap: () {
                                        htmlOpenLink('https://github.com/BusHanyang');
                                      },
                                      child: Text(
                                        "https://github.com/BusHanyang",
                                        style: TextStyle(
                                          fontFamily: "Spoqa Han Sans",
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Image.network(
                                    "assets/images/homepage.png",
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  HandCursor(
                                    child: GestureDetector(
                                      onTap: () {
                                        htmlOpenLink('https://hybus.app');
                                      },
                                      child: Text(
                                        "https://hybus.app",
                                        style: TextStyle(
                                          fontFamily: "Spoqa Han Sans",
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),

                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Image.network(
                                    "assets/images/bushanyang.jpg",
                                    height: 480,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.network(
                                    "assets/images/bushanyang_dark.jpg",
                                    height: 480,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
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
