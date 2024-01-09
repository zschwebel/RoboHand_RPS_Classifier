# RoboHand_RPS_Classifier
NeuroTech final project building an EMG rock paper scissors classifier and robot hand for demo.
Overview:
  -Live EMG data is collected from a Pisson arm band and transmitted via bluetooth to a phone and then via WiFi(lsl) to a computer.
  -The computer propts the user to "shoot" and collects 1.4s of raw EMG data.
  -This data is filtered, features are extracted, and then the event is classified into either rock, paper, or scissiors by a model trained on lots of previous data.
  -The computer then sends a signal to the arduino to move the servos connected to the fingers of the hand to a prescribed position, such that the robot hand will beat the human user, assuming the classification is correct.

There are lots more details including how the model was selected and trained, and how some of the specifics of the live classification is handeled.
