 function res = runMatlabModel(data)
    
    %disp(data);
    numCh = 4;

    % This is your classifier (currentClassifier, or whatever you named it)
    mymodel_stuct = load('currentClassifier.mat');
    mymodel = mymodel_stuct.currentClassifier;
    
    %data = res
    disp('Model Loaded!')
    filt_data = zeros(size(data,1),numCh);
    % Filter the data
    for ch = 1:numCh
        filt_data(:,ch) = highpass(data(:,1+ch), 5,1000);
    end
    disp("data Filtered")
    
    includedFeatures = {'var','mean'}; 
    feats = extractFeaturesExample(filt_data',includedFeatures,1000);
    
    
    % You might want to confirm that mymodel.PredictorNames matches the feature
    % name in feats
    
    % You might want to check to see if the output of this is a 1,2, or 3. It
    % should be a number.
    
    output = mymodel.predict(feats);
    if output==1
        disp('rock')
    end 
    if output==2
        disp('paper')
    end 
    if output==3
        disp('scissors')
    end 
    disp(output)
    disp("guess")
    
    arduino com
    
    clear a;
    a = arduino("/dev/ttyACM0","Uno",'Libraries','Servo');

    clear servo0 servo1 servo2 servo3 servo4
   
    
    robo_hand_move(output,a,'yes');
    disp("Moved2")
    
    res = output;

end