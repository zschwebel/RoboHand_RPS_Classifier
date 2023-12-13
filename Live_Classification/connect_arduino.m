function a = connect_arduino()

clear all
%arduino com
    disp(exist('a'));
    if exist('a') == 0;
        disp('connecting to arduino')
        %clear a;
        a = arduino("/dev/ttyACM0","Uno",'Libraries','Servo');
        disp('connected')
        clear servo0 servo1 servo2 servo3 servo4
    end
end