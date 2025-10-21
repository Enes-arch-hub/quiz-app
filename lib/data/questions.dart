import '../models/question.dart';

final List<Question> questions = [
  Question(
    text: "What is a StatefulWidget in Flutter?",
    options: [
      "A widget that cannot change",
      "A widget that can change state over time",
      "A widget used only for animations",
      "A widget that is immutable",
    ],
    correctIndex: 1,
  ),
  Question(
    text: "What mwthod is called when a StatefulWidget is created?",
    options: ["A build()", "B initState()", "C setState()", "D dispose()"],
    correctIndex: 1,
  ),
  Question(
    text: "What does setState() do?",
    options: [
      "A Creates a new state object",
      "B Notifies framework to rebuild the widget",
      "C Dispose the widget"
          "D Initialize the state",
    ],
    correctIndex: 1,
  ),
  Question(
    text: "What is the main purpose of dispose()?",
    options: [
      "A To build the widget",
      "B To initialize the state",
      "C To clean up resources",
      "D To update the UI",
    ],
    correctIndex: 2,
  ),
  Question(
    text: "Which of these is NOT a data type?",
    options: ["A String", "B Dynamic", "C Constant", "D Boolean"],
    correctIndex: 2,
  ),
  Question(
    text: "What is a Column widget used for?",
    options: [
      "A To arrange widgets horizontally",
      "B To arrange widgets vertically",
      "C To center widgets",
      "D To create circular layouts",
    ],
    correctIndex: 1,
  ),
  Question(
    text: "Which layout widget arranges children horizontally",
    options: ["A Column", "B Stack", "C Row", "D GriedView"],
    correctIndex: 2,
  ),
  Question(
    text: "What does the BuildContext do?",
    options: [
      "A Builds Widgets",
      "B Holds information about the location of a widget",
      "C Manages state",
      "D Handles routing",
    ],
    correctIndex: 1,
  ),
  Question(
    text: "In Dart,what is a future?",
    options: [
      "A A type of widget",
      "B A representation of an asynchronous operation",
      "C A layout widget",
      "D A data type",
    ],
    correctIndex: 1,
  ),
  Question(
    text: "Which widget provides scrolling functionality?",
    options: ["A Container", "B ListView", "C Row", "D Stack"],
    correctIndex: 1,
  ),
];
