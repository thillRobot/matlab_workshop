# Robot Sim Project
This is robo_sim_project for GSET. 

## Your Mission
You have been given a mobile robot simulator called `robo_sim`. You are going to teach the a robot to navigate through a set of reactive behaviors. You will program the logic used by the robot to interpret sensor data and make decisions. The objective is to train a smart robot that can escape the arena in the least time possible. You will be competing against your peers to make the fastest and safest robot.    

## The Robot
The robot is very simple and it is modeled as a circular disc with inertia, however it is shown as an arrow to indicate the heading. You can control where the robot drives by choosing throttle and the steering angle. The robot has mass, and therefore momentum, so if you get up to speed you might not be able to slow down in time. The throttle corresponds to a *Force* in the forward direction and the steering to a angular *Velocity*. 

## The Laser Ranger
The robot experiences the environment through a sensor called a *laser ranger*. This is a special laser that can measure distance. Your robot uses this laser to make 7 measurements separated by 30 degrees in a 180  degree span. The resulting data is essentially coarse polar data. This is used to see obstacles in the path of the robot.

## The Arena
The Robot is placed in an environment with obstacles in it and the robot's goal is to escape the arena (shown as a box). However, if you crash into any objects, your robot will be destroyed. In the current version you are given the option to use a hardcoded map, or create a map using the {\it ginput()} function.
			
## The Code
The MATLAB code behind the Robot Simulator is complex. However, most of it has been written for you. You will be asked to modify the portion which describes the robots reactive behaviors. Also you will be asked to make a few changes to the simulator code structure. The code can be found on Github [here](https://github.com/thillRobot/robo_sim). Click the *code* button and download the entire package. Make sure to extract the compressed folder _before_ you run or modify it. Stay tuned for updates and revisions of the simulator.

## The Assignment:
Teach the robot _at least_ 5 independent reactive behaviors. These can be as simple or as complex as you would like. The possibilities are endless. Keep in mind you are want to escape quickly but not crash. In version 1.2 the behaviors are currently programmed in the function file `robot_decide.m
		


Click [here](https://github.com/thillRobot/matlab_workshop/blob/gset/project/robo_sim_project/robo_sim_project.pdf) for the instructions as a PDF.

Click [here](https://github.com/thillRobot/robo_sim/releases/tag/v2.0) to download the code you will need to start with. Then, find the code button and download the entire package.


