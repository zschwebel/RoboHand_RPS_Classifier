function robo_hand_move(res,a,win)
   
    if win == 'yes'
        if res == 1
            pos = 2;
        end
        if res == 2
            pos = 3;
        end
        if res == 3;
            pos = 1;
        end
    end

    servo0 = servo(a, 'D9'); %pinkie
    servo1 = servo(a, 'D10'); %ring
    servo2 = servo(a, 'D11'); %middle
    servo3 = servo(a, 'D12'); %index
    servo4 = servo(a, 'D13'); %thumb
    
  

    if pos == 0
        rest(servo0, servo1, servo2, servo3, servo4)
    end
    if pos == 1
        rock(servo0, servo1, servo2, servo3, servo4)
    end
    if pos == 2
        paper(servo0, servo1, servo2, servo3, servo4)
      
    end
    if pos == 3
        scissors(servo0, servo1, servo2, servo3, servo4)
    end

    pause(1.5);
    rest(servo0, servo1, servo2, servo3, servo4)
    pause(.3);
    
    function rest(servo0, servo1, servo2, servo3, servo4)
        writePosition(servo0, .2);
        writePosition(servo1, .2);
        writePosition(servo2, .2);
        writePosition(servo3, .2);
        writePosition(servo4, .2);
    end
    
    function rock(servo0, servo1, servo2, servo3, servo4)
        writePosition(servo0, .9);
        writePosition(servo1, .9);
        writePosition(servo2, .9);
        writePosition(servo3, .9);
        writePosition(servo4, .9);
    end
    
    function paper(servo0, servo1, servo2, servo3, servo4)
        writePosition(servo0, 0);
        writePosition(servo1, 0);
        writePosition(servo2, 0);
        writePosition(servo3, 0);
        writePosition(servo4, 0);
    end
    
    function scissors(servo0, servo1, servo2, servo3, servo4)
        writePosition(servo0, .9);
        writePosition(servo1, .9);
        writePosition(servo2, 0);
        writePosition(servo3, 0);
        writePosition(servo4, .9);
    end
end