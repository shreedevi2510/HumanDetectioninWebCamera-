
load('humDetPos.mat');
addpath(cd);
negativeFolder = fullfile(cd,'negative');

trainCascadeObjectDetector('humanTrain.xml',humdetposinstance,negativeFolder,'FalseAlarmRate',0.02,'NumCascadeStages',10);