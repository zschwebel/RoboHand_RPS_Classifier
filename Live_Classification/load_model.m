function mymodel = load_model()

 % This is your classifier (currentClassifier, or whatever you named it)
    if exist('mymodel') == 0
      mymodel_stuct = load('currentClassifier.mat');
      mymodel = mymodel_stuct.currentClassifier; 
    end
end