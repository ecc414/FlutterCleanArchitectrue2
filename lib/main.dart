import 'package:clean_architecture_2/data/source/local/company_list_entity.dart';
import 'package:clean_architecture_2/util/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';

void main() {
  // Register custom class
  Hive.registerAdapter(CompanyListEntityAdapter());

  runApp(const MyApp());
}

class Question{
  final String question;
  final List<String> multiSelect;

  Question({required this.question, required this.multiSelect});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( //기본 테마
        useMaterial3: true,
        colorScheme: lightColorScheme, // Material3ThemeBuilder에서 받은 color_schemes.dart 파일 안에 정의
      ),
      darkTheme: ThemeData( // 다크 모드 테마
        useMaterial3: true,
        colorScheme: darkColorScheme,  // Material3ThemeBuilder에서 받은 color_schemes.dart 파일 안에 정의
      ),
      themeMode: ThemeMode.system, // 휴대폰의 설정대로 테마가 따라간다
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final firstWidgetHeight = keyList[0].currentContext!.size!.height;
      final secondWidgetHeight = firstWidgetHeight + keyList[1].currentContext!.size!.height;
      final thirdWidgetHeight = secondWidgetHeight + keyList[2].currentContext!.size!.height ;
      final forthWidgetHeight = thirdWidgetHeight + keyList[3].currentContext!.size!.height ;

      final currentPosition = controller.position.pixels;
      if (currentPosition < firstWidgetHeight){
        setState(() {
          count = 1;
        });
      } else if (currentPosition < secondWidgetHeight){
        setState(() {
          count = 2;
        });
      } else if (currentPosition < thirdWidgetHeight){
        setState(() {
          count = 3;
        });
      } else if (currentPosition < forthWidgetHeight){
        setState(() {
          count = 4;
        });
      }
    //  print(keyList[0].currentContext?.size?.height);
    //   final currentContext = keyList[0].currentContext!;
    //   final renderObject = currentContext.findRenderObject()!;
    //   final viewPort = RenderAbstractViewport.of(renderObject);
    //   final offsetToRevealBottom = viewPort.getOffsetToReveal(renderObject, 1.0);
    //   final offsetToRevealTop = viewPort.getOffsetToReveal(renderObject, 0.0);
     //  print('offsetTORevealBottom.offset is ${offsetToRevealBottom.offset}');
      // print('offsetToRevealTop.offset is ${offsetToRevealTop.offset}');
     //  print('current position is ${controller.position.pixels}');
      // if (offsetToRevealBottom.offset > controller.position.pixels &&
      //     controller.position.pixels > offsetToRevealTop.offset) {
      //   print('visible');
      // } else {
      //   print('unvisible');
      // }
    });
  }

  final List<String> answerSheet = [];

  final controller = ScrollController();

  final keyList = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    // GlobalKey<_Test1State>(),
    // GlobalKey<_Test2State>(),
    // GlobalKey<_Test3State>(),
    // GlobalKey<_Test4State>(),
  ];

  writeAnswer(String answer){
    answerSheet.add(answer);
    print(answerSheet);
  }

   int count = 1;

   scrollTest() {
     if (count > 3) {count = 0; answerSheet.clear();}
     Scrollable.ensureVisible(keyList[count].currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
     setState(() {
       count++;
     });
   }

   Widget _indicator() => Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children:
       List.generate(keyList.length, (index) => Icon(Icons.circle, color: count-1 == index ? Colors.red : Colors.grey)),
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _indicator(),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      children: [
                        // Test1(key: keyList[0]),
                        Test2(writeAnswer: writeAnswer, key: keyList[0], question: Question(question: '오늘은 무슨 날인가요?', multiSelect: ['좋은날', '나쁜날', '그저 그런 날', '가져 날', '무딘 날'])),
                        Test2(writeAnswer: writeAnswer, key: keyList[1], question: Question(question: '오늘은 무슨 요일인가요?', multiSelect: ['월요일', '화요일', '수요일', '월요일 좋아', ])),
                        Test2(writeAnswer: writeAnswer, key: keyList[2], question: Question(question: '오늘은 뭘 먹을까요?', multiSelect: ['라면', '라멘', '나루토', '짜장면', ])),
                        Test2(writeAnswer: writeAnswer, key: keyList[3], question: Question(question: '오늘 날씨는 어떤가요?', multiSelect: ['맑아요', '안 맑아요', '조금 맑아요', '흐려요', ])),
                        // Test2(key: keyList[2]),
                        // Test4(key: keyList[3]),
                      ],
                    ),
                  ),
                  Container(height: 296.0, color: Colors.red.withOpacity(0.5))
                ],
              ),
            ),
            InkWell(
              onTap: scrollTest,
              child: Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 150),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.teal),
                    child: const Text(
                      '다음',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: scrollTest, child: const Icon(Icons.add),),
    );
  }
}

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {

  say(){
    print('hello!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 500,
    );
  }
}

class Test2 extends StatefulWidget {
  final Question question;
  final Function(String) writeAnswer;
  const Test2({Key? key, required this.question, required this.writeAnswer}) : super(key: key);

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {

  late List<bool> singleSelectAnswerSheet;

  @override
  void initState(){
    super.initState();
    singleSelectAnswerSheet = List.generate(widget.question.multiSelect.length, (index) => false);

  }

  void onChanged({bool? newValue, required int index}){
    for (int i = 0; i < singleSelectAnswerSheet.length; i++){
      singleSelectAnswerSheet[i] = i == index ? true : false;
      if (i == index) widget.writeAnswer(widget.question.multiSelect[i]);
    }
    setState(() {
    });
  }

  Widget _selectWidget(String selectTitle, int index) => Row(
      children: [
        Checkbox(value: singleSelectAnswerSheet[index], onChanged: (newValue) => onChanged(newValue: newValue, index: index)),
        Text(selectTitle, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
      ],
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.question, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ...List.generate(singleSelectAnswerSheet.length, (index) => _selectWidget(widget.question.multiSelect[index], index)),
          ],
        ),
      ),
    );  }
}

class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {

  say(){
    print('hello!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 500,
    );
  }
}

class Test4 extends StatefulWidget {
  const Test4({Key? key}) : super(key: key);

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {


  say(){
    print('hello!!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 500,
    );  }
}
