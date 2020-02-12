import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      debugShowCheckedModeBanner: false,
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
      body: Scrollbar(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 150,
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
                            color: Colors.blueAccent.shade100,
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
                                              "Flutter",
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
                                              height: 25,
                                            ),
                                            Text(
                                              "Flutter",
                                              style: languange_text,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text("로 앱을 만들어",
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
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "버스하냥, BusHanyang",
                                    style: project_text,
//                                textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "한양대학교 ERICA캠퍼스 내 운행중인\n셔틀버스의 도착정보를 실시간으로 안내해주는 서비스.\nPWA 방식으로 다양한 플랫폼을 지원합니다.",
                                    style: TextStyle(
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text("사용된 기술", style: project_middle_text),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      "Front-end : Vue.js(PWA)\nBack-end : Node.js\nDevOps : Jenkins, Docker, Google Cloud Platform(App Engine, Cloud Builder)",
                                      style: project_explain_text),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "프로젝트 링크",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/github-logo.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink(
                                                'https://github.com/BusHanyang');
                                          },
                                          child: Text(
                                              "https://github.com/BusHanyang",
                                              style: project_explain_text),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/hanyang.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink('https://hybus.app');
                                          },
                                          child: Text("https://hybus.app",
                                              style: project_explain_text),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "역할 및 특징",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "• 프로젝트 매니저, 백엔드 API 서버 개발, DevOps 구축.\n• 시간표 데이터를 JSON 형태로 리턴하는 API 서버를 Node.js 와 Express 를 이용하여 제작.\n• 주기별, 요일별로 다른 시간표 데이터를 서버에서 유동적으로 판별하여 전달하도록 설계.\n• DevOps 를 도입하여 단위테스트 부터 빌드까지 전 과정을 자동화.\n• Nodejs 테스트 라이브러리인 Mocha.js 와 Chai.js 를 이용해 API 서버 테스트 자동화.\n• 개발 서버 : Jenkins를 이용해 최신 커밋이 반영된 Docker Container 를 실시간으로 빌드.\n• 릴리즈 서버 : Google App Engine 을 이용해 서비스를 배포, Cloud Builder 를 Github 과 연동하여\n Master 브랜치의 소스가 실시간으로 릴리즈서버에 반영될수 있도록 구현.\n• PWA 표준을 준수하여 제작해 사용자경험을 극대화 하였으며 Android와 IOS 모두를 지원하도록\n Cross-Flatform 을 고려하여 설계됨.",
                                    style: project_explain_text,
                                  ),
                                ],
                              ),
                            ),
//                          SizedBox(
//                            width: 180,
//                          ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              child: Container(
                                child: Image.network(
                                  'assets/images/hybus_iphone_mockup2.png',
                                  width: 600,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 500,
                          child: Divider(
                            color: Colors.black12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Vibe Music Player for Whale Sidebar",
                                    style: project_text,
//                                textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "네이버 VIBE 음악 서비스를 웨일 브라우저의\nSidebar 에서 손쉽게 이용할 수 있는 확장프로그램 입니다.",
                                    style: TextStyle(
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text("사용된 기술", style: project_middle_text),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("HTML, Javascript, Chromium Extension",
                                      style: project_explain_text),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "프로젝트 링크",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/github-logo.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink(
                                                'https://github.com/CXZ7720/Whale_Extension_VIBE');
                                          },
                                          child: Text(
                                              "https://github.com/CXZ7720/Whale_Extension_VIBE",
                                              style: project_explain_text),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/whale.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink(
                                                'https://store.whale.naver.com/detail/bjbfokfonchicpenohpmngbbkpgmbobg');
                                          },
                                          child: Text(
                                              "https://store.whale.naver.com/detail/bjbfokfonchicpenohpmngbbkpgmbobg",
                                              style: project_explain_text),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "역할",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "• 1인 프로젝트.\n• Chromium Extension API를 이용하여 브라우저의 좌측 공간에서 띄울 수 있는 서비스.\n• 약 8000회의 스토어 다운로드 기록.",
                                    style: project_explain_text,
                                  ),
                                ],
                              ),
                            ),
//                          SizedBox(
//                            width: 180,
//                          ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              child: Container(
                                child: Image.network(
                                  'assets/images/whale_store.jpg',
                                  width: 600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "APP 프로젝트",
                          style: subtitle_text,
                        ),
                        Text(
                          "그동안 진행했던 APP 프로젝트입니다.",
                          style: subtitle_small_text,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "HYBUS",
                                    style: project_text,
//                                textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Flutter 로 제작된 한양대학교ERICA 캠퍼스 셔틀버스\n실시간 운행정보 안내 애플리케이션.\n셔틀버스 운행정보 뿐만아니라 연계교통까지 확인이 가능합니다.",
                                    style: TextStyle(
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "사용된 기술",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Android App : Flutter\nAPI Server : Node.js, Module Testing, CI/CD(Jenkins), Docker",
                                    style: TextStyle(
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "프로젝트 링크",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/github-logo.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink(
                                                'https://github.com/CXZ7720/ERICA_shuttle-flutter');
                                          },
                                          child: Text(
                                            "https://github.com/CXZ7720/ERICA_shuttle-flutter",
                                            style: project_explain_text,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.network(
                                        "assets/images/googleplay.png",
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      HandCursor(
                                        child: GestureDetector(
                                          onTap: () {
                                            htmlOpenLink(
                                                'https://play.google.com/store/apps/details?id=com.busHanyang.hybus');
                                          },
                                          child: Text(
                                            "https://play.google.com/store/apps/details?id=com.busHanyang.hybus",
                                            style: project_explain_text,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "역할",
                                    style: project_middle_text,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "• 1인 프로젝트. Android 개발, API 서버 구축 및 연동\n• Flutter 를 이용해 버스운행정보 안내시스템의 안드로이드 플랫폼 앱 제작\n• 서울시 TOIPS API 및 경기도 대중교통 API를 활용해 학교 근처 연계교통 정보를 실시간으로 전달.\n• 셔틀버스 시간표 데이터는 '버스하냥' 프로젝트에서 제작한 API서버를 이용.",
                                    style: project_explain_text,
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Image.network(
                                      "assets/images/play1.png",
                                      width: 300,
                                    ),
//                                  SizedBox(
//                                    width: 15,
//                                  ),
                                    Image.network(
                                      "assets/images/play2.png",
                                      width: 300,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.deepPurpleAccent.shade100,
//                  width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "경력 및 수상",
                          style: subtitle_text,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                top: 50,
                              ),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                ),
                              ]),
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 800,
                                  padding: EdgeInsets.only(
                                    top: 50,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "한양대학교 ERICA 캠퍼스\n소프트웨어융합대학 컴퓨터전공",
                                                style: project_middle_text,
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Text(
                                                "2015.03 ~ 현재",
                                                style: project_explain_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "국군 제 3707부대\nSW개발/정보보호과 근무",
                                                style: project_middle_text,
                                              ),
                                              SizedBox(
                                                width: 75,
                                              ),
                                              Text(
                                                "2016.06 ~ 2018.02",
                                                style: project_explain_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "블록체인 거래소 CoinOne\n산학협력 체험형 인턴십",
                                                style: project_middle_text,
                                              ),
                                              SizedBox(
                                                width: 65,
                                              ),
                                              Text(
                                                "2019.07 ~ 2019.08",
                                                style: project_explain_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "Developer Student Clubs\nHanyang University ERICA 회원",
                                                style: project_middle_text,
                                              ),
                                              SizedBox(
                                                width: 25,
                                              ),
                                              Text(
                                                "2019.09 ~ 현재",
                                                style: project_explain_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 600,
                                            height: 50,
                                            child: Divider(
                                              color: Colors.black12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "한양대학교 SW융합대학 종합학술제\n산학협력 / 창업 분야 장려상 수상",
                                                    style: project_middle_text,
                                                  ),
                                                  Text(
                                                    "산학협력 분야 : 다수의 블록체인 네트워크를 지원하는 통합지갑",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Spoqa Han Sans",
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    "창업분야 : 소동물 양육정보 공유 플랫폼",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Spoqa Han Sans",
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "2019.11",
                                                style: project_explain_text,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
//                SizedBox(
//                  height: 80,
//                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
