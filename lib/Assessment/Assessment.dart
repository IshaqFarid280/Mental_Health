
import 'package:flutter/material.dart';
import 'package:mental_health/Assessment/QuizPage.dart';
import 'package:mental_health/widget/Appcolor.dart';

class Assessment extends StatefulWidget {
  const Assessment({Key? key}) : super(key: key);

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  List<String> depression = [
    'Are you having thoughts that you would be better off dead, or of hurting yourself?',
    'Are you having trouble concentrating on things such as reading the newspaper or watching TV?',
    'Are you feeling bad about yourself (ex. feel like a failure or constantly let your family down)?',
    'Do you have a poor appetite or are you overeating?',
    'Are you feeling tired or having little energy?',
    'Are you having trouble falling or staying asleep, or sleeping too much?',
    'Are you feeling down, depressed, or hopeless?',
    'Do you have little interest or pleasure in doing things?'
  ];

  List<String> anxiety = [
    'Are you feeling nervous, anxious, or on edge?',
    'Are you feeling unable to stop or control worrying?',
    'Are you worrying too much about different things?',
    'Are you having trouble relaxing?',
    'Are you so restless that it is hard to sit still?',
    'Are you feeling easily annoyed or irritable?',
    'Are you feeling as if something awful might happen?'
  ];

  List<String> pstd = [
    'Are you having nightmares about a distressing event(s) or thought about the event(s) when you did not want to?',
    'Are you trying hard not to think about a distressing event(s) or went out of your way to avoid situations that reminded you of the event(s)?',
    'Do you feel constantly on guard, watchful, or easily startled?',
    'Do you feel numb or detached from people, activities, or your surroundings?',
    'Do you feel guilty or unable to stop blaming yourself or others for a distressing events(s) or any problems the event(s) may have caused?'
  ];

  List<String> schizophrenia = [
    'Are you experiencing any brain fog?',
    'Are you struggling to remember to eat or drink water?',
    'Are your thoughts jumbled or are you unable to think clearly?',
    "Are you having trouble seeing things or are you seeing things that aren't there?",
    'Do you feel extremely tired?',
    'Are the happy thoughts speeding up your thought process?',
    'Are the sad thoughts slowing down your thought process?',
    'Are you having any grandiose thoughts?'
  ];

  List<String> stressQuestions = [
    'Are you feeling overwhelmed by physical or emotional stress?',
    'Do you feel like you should take steps to reduce your stress levels?',
    'Are you feeling guilty about how you are managing your stress?',
    'Is anyone annoying you by criticizing how you handle stress?',
    'Do you feel that your stress significantly decreases your ability to function?',
    'Are you feeling stressed as soon as you wake up in the morning?'
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessment Test'),
        centerTitle: true,
        backgroundColor: AppColors.ecogreen,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height / 3,
                width: 0.90 * width,
                child: Image(
                  image: AssetImage('assets/images/test.jpg'),
                ),
              ),
              SizedBox(height: height / 40),
              Text(
                'Choose self assesment test based on following disorders',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: height / 20),
              InkWell(
                child: ListTile(
                  title: Center(child: Text('Depression', style: style)),
                  tileColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(
                              depression,
                              8,
                              'Depression',
                              [Colors.blue, Colors.greenAccent])));
                },
              ),
              SizedBox(height: height / 60),
              InkWell(
                child: ListTile(
                  title: Center(child: Text('Anxiety', style: style)),
                  tileColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(
                              anxiety,
                              7,
                              'Anxiety and stress',
                              [Colors.red, Colors.pinkAccent])));
                },
              ),
              SizedBox(height: height / 60),
              InkWell(
                child: ListTile(
                  title: Center(child: Text('PTSD', style: style)),
                  tileColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(
                              pstd, 5, 'PTSD', [Colors.cyan, Colors.teal])));
                },
              ),
              SizedBox(height: height / 60),
              InkWell(
                child: ListTile(
                  title: Center(child: Text('Schizophrenia', style: style)),
                  tileColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(
                              schizophrenia,
                              8,
                              'Schizophrenia',
                              [Colors.purple, Colors.indigo])));
                },
              ),
              SizedBox(height: height / 60),
              InkWell(
                child: ListTile(
                  title: Center(child: Text('Stress', style: style)),
                  tileColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage(stressQuestions, 6,
                              'Stress', [Colors.brown, Colors.blueGrey])));
                },
              ),
              SizedBox(height: height / 60),
            ],
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(fontSize: 15, color: Colors.black);
