 function res = runMatlabModel(data,a,mymodel)
    a = a;
    %disp(a)
    %disp(data);
    numCh = 4;

    % This is your classifier (currentClassifier, or whatever you named it)
    %mymodel_stuct = load('currentClassifier.mat');
    %mymodel = mymodel_stuct.currentClassifier;
    
    %disp('Model Loaded!')
    
    
    filt_data = zeros(size(data,1),numCh);
    for ch = 1:numCh
       Fs = 1000;
       x = highpass(data(:,ch+1),5,Fs);
       x = bandstop(x,[58 62],Fs);
       x = bandstop(x,[118 122],Fs);
    filt_data(:,1+ch) = bandstop(x,[178 182],Fs);
    end
    %disp("data Filtered")

    
    includedFeatures = {'var', 'mean_freq', 'rel_var', 'rel_mean_freq'}; 
    feats = extractFeaturesExample(filt_data',includedFeatures,1000);
    
    % You might want to confirm that mymodel.PredictorNames matches the feature
    % name in feats
    
    % You might want to check to see if the output of this is a 1,2, or 3. It
    % should be a number.
    
    output = mymodel.predict(feats);
    if output==1
        disp('you threw: ')
        disp('rock!')
    end 
    if output==2
        disp('you threw: ')
        disp('paper')
    end 
    if output==3
        disp('you threw: ')
        disp('scissors')
    end 
    %disp("guess")
    %disp(output)
    
    
    %arduino com
    
    robo_hand_move(output,a,'yes');
    %disp("Moved")
    
    res = output;

end