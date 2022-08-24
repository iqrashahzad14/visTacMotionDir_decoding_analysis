% (C) Copyright 2020 Remi Gau, Marco Barilari

function opt = getOptionmainExperiment2Decoding()
    %
    % returns a structure that contains the options chosen by the user to run
    % slice timing correction, pre-processing, subject and group level analysis.
    %
    % for more info see:
    % <https://cpp-bids-spm.readthedocs.io/en/latest/set_up.html#configuration-of-the-pipeline>
    % <https://cpp-bids-spm.readthedocs.io/en/latest/defaults.html#checkoptions>

 if nargin < 1
    opt = [];
  end

  % group of subjects to analyze
  opt.groups = {''};
  % suject to run in each group
      opt.subjects = {'007'};

  % Uncomment the lines below to run preprocessing
  % - don't use realign and unwarp
  opt.realign.useUnwarp = true;

  % we stay in native space (that of the T1)
  % - in "native" space: don't do normalization
  opt.space = 'MNI'; % 'individual', 'MNI'

  % task to analyze
  opt.taskName = 'mainExperiment2'; % auditoryLocalizer

  %% set paths
  opt.dataDir = fullfile(fileparts(mfilename('fullpath')), ...
                           '..', '..', '..', 'raw');
  opt.derivativesDir = fullfile(opt.dataDir, '..', ...
                                  'derivatives', 'cpp_spm');

  % Suffix output directory for the saved jobs
  opt.jobsDir = fullfile( ...
                         opt.dataDir, '..', 'derivatives', ...
                         'cpp_spm', 'JOBS', opt.taskName);
             
   opt.glm.QA.do =    true;               
                     
  % specify the model file that contains the contrasts to compute
    % univariate
    opt.model.file =  ...
        fullfile(fileparts(mfilename('fullpath')), '..', ...
                 'model', 'model-mainExperiment2Decoding_smdl.json'); %'model-FoR1Decoding_smdl.json'


  % to add the hrf temporal derivative = [1 0]
  % to add the hrf temporal and dispersion derivative = [1 1]
  % opt.model.hrfDerivatives = [0 0];

  %% Specify the result to compute
  opt.result.Steps(1) = returnDefaultResultsStructure();

  opt.result.Steps(1).Level = 'subject';

  opt.result.Steps(1).Contrasts(1).Name = 'visual_vertical_1';
  opt.result.Steps(1).Contrasts(1).MC =  'none';
  opt.result.Steps(1).Contrasts(1).p = 0.001;
  opt.result.Steps(1).Contrasts(1).k = 0;

  % For each contrats, you can adapt:
  %  - voxel level (p)
  %  - cluster (k) level threshold
  %  - type of multiple comparison (MC):
  %    - 'FWE' is the defaut
  %    - 'FDR'
  %    - 'none'
  %
  % not working for multiple contrasts

  opt.result.Steps(1).Contrasts(2).Name = 'visual_vertical_1';
  opt.result.Steps(1).Contrasts(2).MC =  'FWE';
  opt.result.Steps(1).Contrasts(2).p = 0.05;
  opt.result.Steps(1).Contrasts(2).k = 0;
  
  opt.result.Steps(1).Contrasts(3).Name = 'visual_vertical_2';
  opt.result.Steps(1).Contrasts(3).MC =  'none';
  opt.result.Steps(1).Contrasts(3).p = 0.001;
  opt.result.Steps(1).Contrasts(3).k = 0;

  opt.result.Steps(1).Contrasts(4).Name = 'visual_vertical_2';
  opt.result.Steps(1).Contrasts(4).MC =  'FWE';
  opt.result.Steps(1).Contrasts(4).p = 0.05;
  opt.result.Steps(1).Contrasts(4).k = 0;

  opt.result.Steps(1).Contrasts(5).Name = 'visual_vertical_3';
  opt.result.Steps(1).Contrasts(5).MC =  'none';
  opt.result.Steps(1).Contrasts(5).p = 0.001;
  opt.result.Steps(1).Contrasts(5).k = 0;

  opt.result.Steps(1).Contrasts(6).Name = 'visual_vertical_3';
  opt.result.Steps(1).Contrasts(6).MC =  'FWE';
  opt.result.Steps(1).Contrasts(6).p = 0.05;
  opt.result.Steps(1).Contrasts(6).k = 0;

  opt.result.Steps(1).Contrasts(7).Name = 'visual_vertical_4';
  opt.result.Steps(1).Contrasts(7).MC =  'none';
  opt.result.Steps(1).Contrasts(7).p = 0.001;
  opt.result.Steps(1).Contrasts(7).k = 0;

  opt.result.Steps(1).Contrasts(8).Name = 'visual_vertical_4';
  opt.result.Steps(1).Contrasts(8).MC =  'FWE';
  opt.result.Steps(1).Contrasts(8).p = 0.05;
  opt.result.Steps(1).Contrasts(8).k = 0;

  opt.result.Steps(1).Contrasts(9).Name = 'visual_vertical_5';
  opt.result.Steps(1).Contrasts(9).MC =  'none';
  opt.result.Steps(1).Contrasts(9).p = 0.001;
  opt.result.Steps(1).Contrasts(9).k = 0;

  opt.result.Steps(1).Contrasts(10).Name = 'visual_vertical_5';
  opt.result.Steps(1).Contrasts(10).MC =  'FWE';
  opt.result.Steps(1).Contrasts(10).p = 0.05;
  opt.result.Steps(1).Contrasts(10).k = 0;

  opt.result.Steps(1).Contrasts(11).Name = 'visual_vertical_6';
  opt.result.Steps(1).Contrasts(11).MC =  'none';
  opt.result.Steps(1).Contrasts(11).p = 0.001;
  opt.result.Steps(1).Contrasts(11).k = 0;

  opt.result.Steps(1).Contrasts(12).Name = 'visual_vertical_6';
  opt.result.Steps(1).Contrasts(12).MC =  'FWE';
  opt.result.Steps(1).Contrasts(12).p = 0.05;
  opt.result.Steps(1).Contrasts(12).k = 0;

  opt.result.Steps(1).Contrasts(13).Name = 'visual_vertical_7';
  opt.result.Steps(1).Contrasts(13).MC =  'none';
  opt.result.Steps(1).Contrasts(13).p = 0.001;
  opt.result.Steps(1).Contrasts(13).k = 0;

  opt.result.Steps(1).Contrasts(14).Name = 'visual_vertical_7';
  opt.result.Steps(1).Contrasts(14).MC =  'FWE';
  opt.result.Steps(1).Contrasts(14).p = 0.05;
  opt.result.Steps(1).Contrasts(14).k = 0;

  opt.result.Steps(1).Contrasts(15).Name = 'visual_vertical_8';
  opt.result.Steps(1).Contrasts(15).MC =  'none';
  opt.result.Steps(1).Contrasts(15).p = 0.001;
  opt.result.Steps(1).Contrasts(15).k = 0;

  opt.result.Steps(1).Contrasts(16).Name = 'visual_vertical_8';
  opt.result.Steps(1).Contrasts(16).MC =  'FWE';
  opt.result.Steps(1).Contrasts(16).p = 0.05;
  opt.result.Steps(1).Contrasts(16).k = 0;

  opt.result.Steps(1).Contrasts(17).Name = 'visual_vertical_9';
  opt.result.Steps(1).Contrasts(17).MC =  'none';
  opt.result.Steps(1).Contrasts(17).p = 0.001;
  opt.result.Steps(1).Contrasts(17).k = 0;

  opt.result.Steps(1).Contrasts(18).Name = 'visual_vertical_9';
  opt.result.Steps(1).Contrasts(18).MC =  'FWE';
  opt.result.Steps(1).Contrasts(18).p = 0.05;
  opt.result.Steps(1).Contrasts(18).k = 0;

  opt.result.Steps(1).Contrasts(19).Name = 'visual_vertical_10';
  opt.result.Steps(1).Contrasts(19).MC =  'none';
  opt.result.Steps(1).Contrasts(19).p = 0.001;
  opt.result.Steps(1).Contrasts(19).k = 0;

  opt.result.Steps(1).Contrasts(20).Name = 'visual_vertical_10';
  opt.result.Steps(1).Contrasts(20).MC =  'FWE';
  opt.result.Steps(1).Contrasts(20).p = 0.05;
  opt.result.Steps(1).Contrasts(20).k = 0;

  opt.result.Steps(1).Contrasts(21).Name = 'visual_vertical_11';
  opt.result.Steps(1).Contrasts(21).MC =  'none';
  opt.result.Steps(1).Contrasts(21).p = 0.001;
  opt.result.Steps(1).Contrasts(21).k = 0;

  opt.result.Steps(1).Contrasts(22).Name = 'visual_vertical_11';
  opt.result.Steps(1).Contrasts(22).MC =  'FWE';
  opt.result.Steps(1).Contrasts(22).p = 0.05;
  opt.result.Steps(1).Contrasts(22).k = 0;

  opt.result.Steps(1).Contrasts(23).Name = 'visual_vertical_12';
  opt.result.Steps(1).Contrasts(23).MC =  'none';
  opt.result.Steps(1).Contrasts(23).p = 0.001;
  opt.result.Steps(1).Contrasts(23).k = 0;

  opt.result.Steps(1).Contrasts(24).Name = 'visual_vertical_12';
  opt.result.Steps(1).Contrasts(24).MC =  'FWE';
  opt.result.Steps(1).Contrasts(24).p = 0.05;
  opt.result.Steps(1).Contrasts(24).k = 0;

  opt.result.Steps(1).Contrasts(25).Name = 'visual_vertical_13';
  opt.result.Steps(1).Contrasts(25).MC =  'none';
  opt.result.Steps(1).Contrasts(25).p = 0.001;
  opt.result.Steps(1).Contrasts(25).k = 0;

  opt.result.Steps(1).Contrasts(26).Name = 'visual_vertical_13';
  opt.result.Steps(1).Contrasts(26).MC =  'FWE';
  opt.result.Steps(1).Contrasts(26).p = 0.05;
  opt.result.Steps(1).Contrasts(26).k = 0;

  opt.result.Steps(1).Contrasts(27).Name = 'visual_horizontal_1';
  opt.result.Steps(1).Contrasts(27).MC =  'none';
  opt.result.Steps(1).Contrasts(27).p = 0.001;
  opt.result.Steps(1).Contrasts(27).k = 0;

  opt.result.Steps(1).Contrasts(28).Name = 'visual_horizontal_1';
  opt.result.Steps(1).Contrasts(28).MC =  'FWE';
  opt.result.Steps(1).Contrasts(28).p = 0.05;
  opt.result.Steps(1).Contrasts(28).k = 0;

  opt.result.Steps(1).Contrasts(29).Name = 'visual_horizontal_2';
  opt.result.Steps(1).Contrasts(29).MC =  'none';
  opt.result.Steps(1).Contrasts(29).p = 0.001;
  opt.result.Steps(1).Contrasts(29).k = 0;

  opt.result.Steps(1).Contrasts(30).Name = 'visual_horizontal_2';
  opt.result.Steps(1).Contrasts(30).MC =  'FWE';
  opt.result.Steps(1).Contrasts(30).p = 0.05;
  opt.result.Steps(1).Contrasts(30).k = 0;
  
  opt.result.Steps(1).Contrasts(31).Name = 'visual_horizontal_3';
  opt.result.Steps(1).Contrasts(31).MC =  'none';
  opt.result.Steps(1).Contrasts(31).p = 0.001;
  opt.result.Steps(1).Contrasts(31).k = 0;

  opt.result.Steps(1).Contrasts(32).Name = 'visual_horizontal_3';
  opt.result.Steps(1).Contrasts(32).MC =  'FWE';
  opt.result.Steps(1).Contrasts(32).p = 0.05;
  opt.result.Steps(1).Contrasts(32).k = 0;

  opt.result.Steps(1).Contrasts(33).Name = 'visual_horizontal_4';
  opt.result.Steps(1).Contrasts(33).MC =  'none';
  opt.result.Steps(1).Contrasts(33).p = 0.001;
  opt.result.Steps(1).Contrasts(33).k = 0;

  opt.result.Steps(1).Contrasts(34).Name = 'visual_horizontal_4';
  opt.result.Steps(1).Contrasts(34).MC =  'FWE';
  opt.result.Steps(1).Contrasts(34).p = 0.05;
  opt.result.Steps(1).Contrasts(34).k = 0;
  
  opt.result.Steps(1).Contrasts(35).Name = 'visual_horizontal_5';
  opt.result.Steps(1).Contrasts(35).MC =  'none';
  opt.result.Steps(1).Contrasts(35).p = 0.001;
  opt.result.Steps(1).Contrasts(35).k = 0;

  opt.result.Steps(1).Contrasts(36).Name = 'visual_horizontal_5';
  opt.result.Steps(1).Contrasts(36).MC =  'FWE';
  opt.result.Steps(1).Contrasts(36).p = 0.05;
  opt.result.Steps(1).Contrasts(36).k = 0;

  opt.result.Steps(1).Contrasts(37).Name = 'visual_horizontal_6';
  opt.result.Steps(1).Contrasts(37).MC =  'none';
  opt.result.Steps(1).Contrasts(37).p = 0.001;
  opt.result.Steps(1).Contrasts(37).k = 0;

  opt.result.Steps(1).Contrasts(38).Name = 'visual_horizontal_6';
  opt.result.Steps(1).Contrasts(38).MC =  'FWE';
  opt.result.Steps(1).Contrasts(38).p = 0.05;
  opt.result.Steps(1).Contrasts(38).k = 0;

  opt.result.Steps(1).Contrasts(39).Name = 'visual_horizontal_7';
  opt.result.Steps(1).Contrasts(39).MC =  'none';
  opt.result.Steps(1).Contrasts(39).p = 0.001;
  opt.result.Steps(1).Contrasts(39).k = 0;

  opt.result.Steps(1).Contrasts(40).Name = 'visual_horizontal_7';
  opt.result.Steps(1).Contrasts(40).MC =  'FWE';
  opt.result.Steps(1).Contrasts(40).p = 0.05;
  opt.result.Steps(1).Contrasts(40).k = 0;

  opt.result.Steps(1).Contrasts(41).Name = 'visual_horizontal_8';
  opt.result.Steps(1).Contrasts(41).MC =  'none';
  opt.result.Steps(1).Contrasts(41).p = 0.001;
  opt.result.Steps(1).Contrasts(41).k = 0;

  opt.result.Steps(1).Contrasts(42).Name = 'visual_horizontal_8';
  opt.result.Steps(1).Contrasts(42).MC =  'FWE';
  opt.result.Steps(1).Contrasts(42).p = 0.05;
  opt.result.Steps(1).Contrasts(42).k = 0;

  opt.result.Steps(1).Contrasts(43).Name = 'visual_horizontal_9';
  opt.result.Steps(1).Contrasts(43).MC =  'none';
  opt.result.Steps(1).Contrasts(43).p = 0.001;
  opt.result.Steps(1).Contrasts(43).k = 0;

  opt.result.Steps(1).Contrasts(44).Name = 'visual_horizontal_9';
  opt.result.Steps(1).Contrasts(44).MC =  'FWE';
  opt.result.Steps(1).Contrasts(44).p = 0.05;
  opt.result.Steps(1).Contrasts(44).k = 0;

  opt.result.Steps(1).Contrasts(45).Name = 'visual_horizontal_10';
  opt.result.Steps(1).Contrasts(45).MC =  'none';
  opt.result.Steps(1).Contrasts(45).p = 0.001;
  opt.result.Steps(1).Contrasts(45).k = 0;

  opt.result.Steps(1).Contrasts(46).Name = 'visual_horizontal_10';
  opt.result.Steps(1).Contrasts(46).MC =  'FWE';
  opt.result.Steps(1).Contrasts(46).p = 0.05;
  opt.result.Steps(1).Contrasts(46).k = 0;

  opt.result.Steps(1).Contrasts(47).Name = 'visual_horizontal_11';
  opt.result.Steps(1).Contrasts(47).MC =  'none';
  opt.result.Steps(1).Contrasts(47).p = 0.001;
  opt.result.Steps(1).Contrasts(47).k = 0;

  opt.result.Steps(1).Contrasts(48).Name = 'visual_horizontal_11';
  opt.result.Steps(1).Contrasts(48).MC =  'FWE';
  opt.result.Steps(1).Contrasts(48).p = 0.05;
  opt.result.Steps(1).Contrasts(48).k = 0;

  opt.result.Steps(1).Contrasts(49).Name = 'visual_horizontal_12';
  opt.result.Steps(1).Contrasts(49).MC =  'none';
  opt.result.Steps(1).Contrasts(49).p = 0.001;
  opt.result.Steps(1).Contrasts(49).k = 0;

  opt.result.Steps(1).Contrasts(50).Name = 'visual_horizontal_12';
  opt.result.Steps(1).Contrasts(50).MC =  'FWE';
  opt.result.Steps(1).Contrasts(50).p = 0.05;
  opt.result.Steps(1).Contrasts(50).k = 0;

  opt.result.Steps(1).Contrasts(51).Name = 'visual_horizontal_13';
  opt.result.Steps(1).Contrasts(51).MC =  'none';
  opt.result.Steps(1).Contrasts(51).p = 0.001;
  opt.result.Steps(1).Contrasts(51).k = 0;

  opt.result.Steps(1).Contrasts(52).Name = 'visual_horizontal_13';
  opt.result.Steps(1).Contrasts(52).MC =  'FWE';
  opt.result.Steps(1).Contrasts(52).p = 0.05;
  opt.result.Steps(1).Contrasts(52).k = 0;
  
  opt.result.Steps(1).Contrasts(53).Name = 'tactile_vertical_1';
  opt.result.Steps(1).Contrasts(53).MC =  'none';
  opt.result.Steps(1).Contrasts(53).p = 0.001;
  opt.result.Steps(1).Contrasts(53).k = 0;

  opt.result.Steps(1).Contrasts(54).Name = 'tactile_vertical_1';
  opt.result.Steps(1).Contrasts(54).MC =  'FWE';
  opt.result.Steps(1).Contrasts(54).p = 0.05;
  opt.result.Steps(1).Contrasts(54).k = 0;
  
  opt.result.Steps(1).Contrasts(55).Name = 'tactile_vertical_2';
  opt.result.Steps(1).Contrasts(55).MC =  'none';
  opt.result.Steps(1).Contrasts(55).p = 0.001;
  opt.result.Steps(1).Contrasts(55).k = 0;

  opt.result.Steps(1).Contrasts(56).Name = 'tactile_vertical_2';
  opt.result.Steps(1).Contrasts(56).MC =  'FWE';
  opt.result.Steps(1).Contrasts(56).p = 0.05;
  opt.result.Steps(1).Contrasts(56).k = 0;

  opt.result.Steps(1).Contrasts(57).Name = 'tactile_vertical_3';
  opt.result.Steps(1).Contrasts(57).MC =  'none';
  opt.result.Steps(1).Contrasts(57).p = 0.001;
  opt.result.Steps(1).Contrasts(57).k = 0;

  opt.result.Steps(1).Contrasts(58).Name = 'tactile_vertical_3';
  opt.result.Steps(1).Contrasts(58).MC =  'FWE';
  opt.result.Steps(1).Contrasts(58).p = 0.05;
  opt.result.Steps(1).Contrasts(58).k = 0;

  opt.result.Steps(1).Contrasts(59).Name = 'tactile_vertical_4';
  opt.result.Steps(1).Contrasts(59).MC =  'none';
  opt.result.Steps(1).Contrasts(59).p = 0.001;
  opt.result.Steps(1).Contrasts(59).k = 0;

  opt.result.Steps(1).Contrasts(60).Name = 'tactile_vertical_4';
  opt.result.Steps(1).Contrasts(60).MC =  'FWE';
  opt.result.Steps(1).Contrasts(60).p = 0.05;
  opt.result.Steps(1).Contrasts(60).k = 0;

  opt.result.Steps(1).Contrasts(61).Name = 'tactile_vertical_5';
  opt.result.Steps(1).Contrasts(61).MC =  'none';
  opt.result.Steps(1).Contrasts(61).p = 0.001;
  opt.result.Steps(1).Contrasts(61).k = 0;

  opt.result.Steps(1).Contrasts(62).Name = 'tactile_vertical_5';
  opt.result.Steps(1).Contrasts(62).MC =  'FWE';
  opt.result.Steps(1).Contrasts(62).p = 0.05;
  opt.result.Steps(1).Contrasts(62).k = 0;

  opt.result.Steps(1).Contrasts(63).Name = 'tactile_vertical_6';
  opt.result.Steps(1).Contrasts(63).MC =  'none';
  opt.result.Steps(1).Contrasts(63).p = 0.001;
  opt.result.Steps(1).Contrasts(63).k = 0;

  opt.result.Steps(1).Contrasts(64).Name = 'tactile_vertical_6';
  opt.result.Steps(1).Contrasts(64).MC =  'FWE';
  opt.result.Steps(1).Contrasts(64).p = 0.05;
  opt.result.Steps(1).Contrasts(64).k = 0;

  opt.result.Steps(1).Contrasts(65).Name = 'tactile_vertical_7';
  opt.result.Steps(1).Contrasts(65).MC =  'none';
  opt.result.Steps(1).Contrasts(65).p = 0.001;
  opt.result.Steps(1).Contrasts(65).k = 0;

  opt.result.Steps(1).Contrasts(66).Name = 'tactile_vertical_7';
  opt.result.Steps(1).Contrasts(66).MC =  'FWE';
  opt.result.Steps(1).Contrasts(66).p = 0.05;
  opt.result.Steps(1).Contrasts(66).k = 0;

  opt.result.Steps(1).Contrasts(67).Name = 'tactile_vertical_8';
  opt.result.Steps(1).Contrasts(67).MC =  'none';
  opt.result.Steps(1).Contrasts(67).p = 0.001;
  opt.result.Steps(1).Contrasts(67).k = 0;

  opt.result.Steps(1).Contrasts(68).Name = 'tactile_vertical_8';
  opt.result.Steps(1).Contrasts(68).MC =  'FWE';
  opt.result.Steps(1).Contrasts(68).p = 0.05;
  opt.result.Steps(1).Contrasts(68).k = 0;

  opt.result.Steps(1).Contrasts(69).Name = 'tactile_vertical_9';
  opt.result.Steps(1).Contrasts(69).MC =  'none';
  opt.result.Steps(1).Contrasts(69).p = 0.001;
  opt.result.Steps(1).Contrasts(69).k = 0;

  opt.result.Steps(1).Contrasts(70).Name = 'tactile_vertical_9';
  opt.result.Steps(1).Contrasts(70).MC =  'FWE';
  opt.result.Steps(1).Contrasts(70).p = 0.05;
  opt.result.Steps(1).Contrasts(70).k = 0;

  opt.result.Steps(1).Contrasts(71).Name = 'tactile_vertical_10';
  opt.result.Steps(1).Contrasts(71).MC =  'none';
  opt.result.Steps(1).Contrasts(71).p = 0.001;
  opt.result.Steps(1).Contrasts(71).k = 0;

  opt.result.Steps(1).Contrasts(72).Name = 'tactile_vertical_10';
  opt.result.Steps(1).Contrasts(72).MC =  'FWE';
  opt.result.Steps(1).Contrasts(72).p = 0.05;
  opt.result.Steps(1).Contrasts(72).k = 0;

  opt.result.Steps(1).Contrasts(73).Name = 'tactile_vertical_11';
  opt.result.Steps(1).Contrasts(73).MC =  'none';
  opt.result.Steps(1).Contrasts(73).p = 0.001;
  opt.result.Steps(1).Contrasts(73).k = 0;

  opt.result.Steps(1).Contrasts(74).Name = 'tactile_vertical_11';
  opt.result.Steps(1).Contrasts(74).MC =  'FWE';
  opt.result.Steps(1).Contrasts(74).p = 0.05;
  opt.result.Steps(1).Contrasts(74).k = 0;

  opt.result.Steps(1).Contrasts(75).Name = 'tactile_vertical_12';
  opt.result.Steps(1).Contrasts(75).MC =  'none';
  opt.result.Steps(1).Contrasts(75).p = 0.001;
  opt.result.Steps(1).Contrasts(75).k = 0;

  opt.result.Steps(1).Contrasts(76).Name = 'tactile_vertical_12';
  opt.result.Steps(1).Contrasts(76).MC =  'FWE';
  opt.result.Steps(1).Contrasts(76).p = 0.05;
  opt.result.Steps(1).Contrasts(76).k = 0;

  opt.result.Steps(1).Contrasts(77).Name = 'tactile_vertical_13';
  opt.result.Steps(1).Contrasts(77).MC =  'none';
  opt.result.Steps(1).Contrasts(77).p = 0.001;
  opt.result.Steps(1).Contrasts(77).k = 0;

  opt.result.Steps(1).Contrasts(78).Name = 'tactile_vertical_13';
  opt.result.Steps(1).Contrasts(78).MC =  'FWE';
  opt.result.Steps(1).Contrasts(78).p = 0.05;
  opt.result.Steps(1).Contrasts(78).k = 0;

  opt.result.Steps(1).Contrasts(79).Name = 'tactile_horizontal_1';
  opt.result.Steps(1).Contrasts(79).MC =  'none';
  opt.result.Steps(1).Contrasts(79).p = 0.001;
  opt.result.Steps(1).Contrasts(79).k = 0;

  opt.result.Steps(1).Contrasts(80).Name = 'tactile_horizontal_1';
  opt.result.Steps(1).Contrasts(80).MC =  'FWE';
  opt.result.Steps(1).Contrasts(80).p = 0.05;
  opt.result.Steps(1).Contrasts(80).k = 0;

  opt.result.Steps(1).Contrasts(81).Name = 'tactile_horizontal_2';
  opt.result.Steps(1).Contrasts(81).MC =  'none';
  opt.result.Steps(1).Contrasts(81).p = 0.001;
  opt.result.Steps(1).Contrasts(81).k = 0;

  opt.result.Steps(1).Contrasts(82).Name = 'tactile_horizontal_2';
  opt.result.Steps(1).Contrasts(82).MC =  'FWE';
  opt.result.Steps(1).Contrasts(82).p = 0.05;
  opt.result.Steps(1).Contrasts(82).k = 0;
  
  opt.result.Steps(1).Contrasts(83).Name = 'tactile_horizontal_3';
  opt.result.Steps(1).Contrasts(83).MC =  'none';
  opt.result.Steps(1).Contrasts(83).p = 0.001;
  opt.result.Steps(1).Contrasts(83).k = 0;

  opt.result.Steps(1).Contrasts(84).Name = 'tactile_horizontal_3';
  opt.result.Steps(1).Contrasts(84).MC =  'FWE';
  opt.result.Steps(1).Contrasts(84).p = 0.05;
  opt.result.Steps(1).Contrasts(84).k = 0;

  opt.result.Steps(1).Contrasts(85).Name = 'tactile_horizontal_4';
  opt.result.Steps(1).Contrasts(85).MC =  'none';
  opt.result.Steps(1).Contrasts(85).p = 0.001;
  opt.result.Steps(1).Contrasts(85).k = 0;

  opt.result.Steps(1).Contrasts(86).Name = 'tactile_horizontal_4';
  opt.result.Steps(1).Contrasts(86).MC =  'FWE';
  opt.result.Steps(1).Contrasts(86).p = 0.05;
  opt.result.Steps(1).Contrasts(86).k = 0;
  
  opt.result.Steps(1).Contrasts(87).Name = 'tactile_horizontal_5';
  opt.result.Steps(1).Contrasts(87).MC =  'none';
  opt.result.Steps(1).Contrasts(87).p = 0.001;
  opt.result.Steps(1).Contrasts(87).k = 0;

  opt.result.Steps(1).Contrasts(88).Name = 'tactile_horizontal_5';
  opt.result.Steps(1).Contrasts(88).MC =  'FWE';
  opt.result.Steps(1).Contrasts(88).p = 0.05;
  opt.result.Steps(1).Contrasts(88).k = 0;

  opt.result.Steps(1).Contrasts(89).Name = 'tactile_horizontal_6';
  opt.result.Steps(1).Contrasts(89).MC =  'none';
  opt.result.Steps(1).Contrasts(89).p = 0.001;
  opt.result.Steps(1).Contrasts(89).k = 0;

  opt.result.Steps(1).Contrasts(90).Name = 'tactile_horizontal_6';
  opt.result.Steps(1).Contrasts(90).MC =  'FWE';
  opt.result.Steps(1).Contrasts(90).p = 0.05;
  opt.result.Steps(1).Contrasts(90).k = 0;

  opt.result.Steps(1).Contrasts(91).Name = 'tactile_horizontal_7';
  opt.result.Steps(1).Contrasts(91).MC =  'none';
  opt.result.Steps(1).Contrasts(91).p = 0.001;
  opt.result.Steps(1).Contrasts(91).k = 0;

  opt.result.Steps(1).Contrasts(92).Name = 'tactile_horizontal_7';
  opt.result.Steps(1).Contrasts(92).MC =  'FWE';
  opt.result.Steps(1).Contrasts(92).p = 0.05;
  opt.result.Steps(1).Contrasts(92).k = 0;

  opt.result.Steps(1).Contrasts(93).Name = 'tactile_horizontal_8';
  opt.result.Steps(1).Contrasts(93).MC =  'none';
  opt.result.Steps(1).Contrasts(93).p = 0.001;
  opt.result.Steps(1).Contrasts(93).k = 0;

  opt.result.Steps(1).Contrasts(94).Name = 'tactile_horizontal_8';
  opt.result.Steps(1).Contrasts(94).MC =  'FWE';
  opt.result.Steps(1).Contrasts(94).p = 0.05;
  opt.result.Steps(1).Contrasts(94).k = 0;

  opt.result.Steps(1).Contrasts(95).Name = 'tactile_horizontal_9';
  opt.result.Steps(1).Contrasts(95).MC =  'none';
  opt.result.Steps(1).Contrasts(95).p = 0.001;
  opt.result.Steps(1).Contrasts(95).k = 0;

  opt.result.Steps(1).Contrasts(96).Name = 'tactile_horizontal_9';
  opt.result.Steps(1).Contrasts(96).MC =  'FWE';
  opt.result.Steps(1).Contrasts(96).p = 0.05;
  opt.result.Steps(1).Contrasts(96).k = 0;

  opt.result.Steps(1).Contrasts(97).Name = 'tactile_horizontal_10';
  opt.result.Steps(1).Contrasts(97).MC =  'none';
  opt.result.Steps(1).Contrasts(97).p = 0.001;
  opt.result.Steps(1).Contrasts(97).k = 0;

  opt.result.Steps(1).Contrasts(98).Name = 'tactile_horizontal_10';
  opt.result.Steps(1).Contrasts(98).MC =  'FWE';
  opt.result.Steps(1).Contrasts(98).p = 0.05;
  opt.result.Steps(1).Contrasts(98).k = 0;

  opt.result.Steps(1).Contrasts(99).Name = 'tactile_horizontal_11';
  opt.result.Steps(1).Contrasts(99).MC =  'none';
  opt.result.Steps(1).Contrasts(99).p = 0.001;
  opt.result.Steps(1).Contrasts(99).k = 0;

  opt.result.Steps(1).Contrasts(100).Name = 'tactile_horizontal_11';
  opt.result.Steps(1).Contrasts(100).MC =  'FWE';
  opt.result.Steps(1).Contrasts(100).p = 0.05;
  opt.result.Steps(1).Contrasts(100).k = 0;

  opt.result.Steps(1).Contrasts(101).Name = 'tactile_horizontal_12';
  opt.result.Steps(1).Contrasts(101).MC =  'none';
  opt.result.Steps(1).Contrasts(101).p = 0.001;
  opt.result.Steps(1).Contrasts(101).k = 0;

  opt.result.Steps(1).Contrasts(102).Name = 'tactile_horizontal_12';
  opt.result.Steps(1).Contrasts(102).MC =  'FWE';
  opt.result.Steps(1).Contrasts(102).p = 0.05;
  opt.result.Steps(1).Contrasts(102).k = 0;

  opt.result.Steps(1).Contrasts(103).Name = 'tactile_horizontal_13';
  opt.result.Steps(1).Contrasts(103).MC =  'none';
  opt.result.Steps(1).Contrasts(103).p = 0.001;
  opt.result.Steps(1).Contrasts(103).k = 0;

  opt.result.Steps(1).Contrasts(104).Name = 'tactile_horizontal_13';
  opt.result.Steps(1).Contrasts(104).MC =  'FWE';
  opt.result.Steps(1).Contrasts(104).p = 0.05;
  opt.result.Steps(1).Contrasts(104).k = 0;


  % Specify how you want your output (all the following are on false by default)
  opt.result.Steps(1).Output.png = true();

  opt.result.Steps(1).Output.csv = true();

  opt.result.Steps(1).Output.thresh_spm = true();

  opt.result.Steps(1).Output.binary = true();

  opt.result.Steps(1).Output.montage.do = true();
  opt.result.Steps(1).Output.montage.slices = -12:4:60; % in mm -8:3:15;
  % axial is default 'sagittal', 'coronal'
  opt.result.Steps(1).Output.montage.orientation = 'axial';

  % will use the MNI T1 template by default but the underlay image can be
  % changed.
  opt.result.Steps(1).Output.montage.background = ...
      fullfile(spm('dir'), 'canonical', 'avg152T1.nii,1');

  %   opt.result.Steps(1).Output.NIDM_results = true();

  % Options for slice time correction
  opt.sliceOrder = [0, 0.875, 0.0673, 0.9423, 0.1346, 1.0096, 0.2019, 1.0769, 0.2692, 1.1442,...
        0.3365, 1.2115, 0.4038, 1.2788, 0.4711, 1.3461, 0.5384, 1.4134, 0.6057, 1.4807,...
        0.673, 1.548, 0.7403, 1.6826, 0.8076, 1.6153, 0, 0.875, 0.0673, 0.9423, ...
        0.1346, 1.0096, 0.2019, 1.0769, 0.2692, 1.1442, 0.3365, 1.2115, 0.4038, 1.2788,...
        0.4711, 1.3461, 0.5384, 1.4134, 0.6057, 1.4807, 0.673, 1.548, 0.7403, 1.6826,...
        0.8076, 1.6153];
  
  opt.STC_referenceSlice = [];

  % Options for normalize
  % Voxel dimensions for resampling at normalization of functional data or leave empty [ ].
%   opt.funcVoxelDims = [2.6 2.6 2.6];

  opt.parallelize.do = true;
  opt.parallelize.nbWorkers = 3;
  opt.parallelize.killOnExit = true;
  
%    opt.model.hrfDerivatives = [1 0];

  %% DO NOT TOUCH
  opt = checkOptions(opt);
  saveOptions(opt);


end
