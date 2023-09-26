void main() {
 ///////////////////////////////////////////////////////////
 //  เทวราช คนหาญ CAE6441
 ///////////////////////////////////////////////////////////
  MyRobot.helloRobot();

  var robot1 = MyRobot();
  robot1.viewRobotData();

  MyRobot.robotName = "Prawit";
  MyRobot.robotPrice = 100;

  var robot2 = MyRobot();
  robot2.viewRobotData();

  MyRobot.robotName = "Prayut";
  MyRobot.robotPrice = 300;

  var robot3 = MyRobot();
  robot3.viewRobotData();
}

class MyRobot {
  static String robotName = 'Hello World';
  static int robotPrice = 50;
  static int robotCount = 0;

  static helloRobot() {
    print('hello from robot');
  }

  MyRobot() {
    print('Robot has created a new robot ${robotCount++}');
  }

  viewRobotData() {
    print(robotName);
    print(robotPrice);
    print('robots number: ${robotCount}');
  }
}
