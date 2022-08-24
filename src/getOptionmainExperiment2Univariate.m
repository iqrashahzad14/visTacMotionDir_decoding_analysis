% (C) Copyright 2020 Remi Gau, Marco Barilari

function opt = getOptionmainExperiment2Univariate()
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
                 'model', 'model-mainExperiment2Univariate_smdl.json');%'model-FoR1Univariate_smdl.json'


  % to add the hrf temporal derivative = [1 0]
  % to add the hrf temporal and dispersion derivative = [1 1]
  % opt.model.hrfDerivatives = [0 0];

  %% Specify the result to compute
  opt.result.Steps(1) = returnDefaultResultsStructure();

  opt.result.Steps(1).Level = 'subject';

  opt.result.Steps(1).Contrasts(1).Name = 'visual_vertical';
  opt.result.Steps(1).Contrasts(1).MC =  'none';
  opt.result.Steps(1).Contrasts(1).p = 0.001;
  opt.result.Steps(1).Contrasts(1).k = 0;

  opt.result.Steps(1).Contrasts(2).Name = 'visual_horizontal';
  opt.result.Steps(1).Contrasts(2).MC =  'none';
  opt.result.Steps(1).Contrasts(2).p = 0.001;
  opt.result.Steps(1).Contrasts(2).k = 0;

  opt.result.Steps(1).Contrasts(3).Name = 'tactile_vertical';
  opt.result.Steps(1).Contrasts(3).MC =  'none';
  opt.result.Steps(1).Contrasts(3).p = 0.001;
  opt.result.Steps(1).Contrasts(3).k = 0;

  opt.result.Steps(1).Contrasts(4).Name = 'tactile_horizontal';
  opt.result.Steps(1).Contrasts(4).MC =  'none';
  opt.result.Steps(1).Contrasts(4).p = 0.001;
  opt.result.Steps(1).Contrasts(4).k = 0;

  % For each contrats, you can adapt:
  %  - voxel level (p)
  %  - cluster (k) level threshold
  %  - type of multiple comparison (MC):
  %    - 'FWE' is the defaut
  %    - 'FDR'
  %    - 'none'
  %
  % not working for multiple contrasts
  opt.result.Steps(1).Contrasts(5).Name = 'visual_ver_gt_hor';
  opt.result.Steps(1).Contrasts(5).MC =  'none';
  opt.result.Steps(1).Contrasts(5).p = 0.001;
  opt.result.Steps(1).Contrasts(5).k = 0;

  opt.result.Steps(1).Contrasts(6).Name = 'visual_ver_gt_hor';
  opt.result.Steps(1).Contrasts(6).MC =  'FWE';
  opt.result.Steps(1).Contrasts(6).p = 0.05;
  opt.result.Steps(1).Contrasts(6).k = 0;
  
  opt.result.Steps(1).Contrasts(7).Name = 'visual_hor_gt_vert';
  opt.result.Steps(1).Contrasts(7).MC =  'none';
  opt.result.Steps(1).Contrasts(7).p = 0.001;
  opt.result.Steps(1).Contrasts(7).k = 0;

  opt.result.Steps(1).Contrasts(8).Name = 'visual_hor_gt_vert';
  opt.result.Steps(1).Contrasts(8).MC =  'FWE';
  opt.result.Steps(1).Contrasts(8).p = 0.05;
  opt.result.Steps(1).Contrasts(8).k = 0;

  opt.result.Steps(1).Contrasts(9).Name = 'visual_hor_gt_vert';
  opt.result.Steps(1).Contrasts(9).MC =  'none';
  opt.result.Steps(1).Contrasts(9).p = 0.005;
  opt.result.Steps(1).Contrasts(9).k = 0;

  opt.result.Steps(1).Contrasts(10).Name = 'tactile_ver_gt_hor';
  opt.result.Steps(1).Contrasts(10).MC =  'none';
  opt.result.Steps(1).Contrasts(10).p = 0.001;
  opt.result.Steps(1).Contrasts(10).k = 0;

  opt.result.Steps(1).Contrasts(11).Name = 'tactile_ver_gt_hor';
  opt.result.Steps(1).Contrasts(11).MC =  'FWE';
  opt.result.Steps(1).Contrasts(11).p = 0.05;
  opt.result.Steps(1).Contrasts(11).k = 0;

  opt.result.Steps(1).Contrasts(12).Name = 'tactile_hor_gt_vert';
  opt.result.Steps(1).Contrasts(12).MC =  'none';
  opt.result.Steps(1).Contrasts(12).p = 0.001;
  opt.result.Steps(1).Contrasts(12).k = 0;

  opt.result.Steps(1).Contrasts(13).Name = 'tactile_hor_gt_vert';
  opt.result.Steps(1).Contrasts(13).MC =  'FWE';
  opt.result.Steps(1).Contrasts(13).p = 0.05;
  opt.result.Steps(1).Contrasts(13).k = 0;

  opt.result.Steps(1).Contrasts(14).Name = 'visual_vert_gt_tactile_vert';
  opt.result.Steps(1).Contrasts(14).MC =  'none';
  opt.result.Steps(1).Contrasts(14).p = 0.001;
  opt.result.Steps(1).Contrasts(14).k = 0;

  opt.result.Steps(1).Contrasts(15).Name = 'visual_vert_gt_tactile_vert';
  opt.result.Steps(1).Contrasts(15).MC =  'FWE';
  opt.result.Steps(1).Contrasts(15).p = 0.05;
  opt.result.Steps(1).Contrasts(15).k = 0;

  opt.result.Steps(1).Contrasts(16).Name = 'tactile_vert_gt_visual_vert';
  opt.result.Steps(1).Contrasts(16).MC =  'none';
  opt.result.Steps(1).Contrasts(16).p = 0.001;
  opt.result.Steps(1).Contrasts(16).k = 0;

  opt.result.Steps(1).Contrasts(17).Name = 'tactile_vert_gt_visual_vert';
  opt.result.Steps(1).Contrasts(17).MC =  'FWE';
  opt.result.Steps(1).Contrasts(17).p = 0.05;
  opt.result.Steps(1).Contrasts(17).k = 0;

  opt.result.Steps(1).Contrasts(18).Name = 'visual_hor_gt_tactile_hor';
  opt.result.Steps(1).Contrasts(18).MC =  'none';
  opt.result.Steps(1).Contrasts(18).p = 0.001;
  opt.result.Steps(1).Contrasts(18).k = 0;

  opt.result.Steps(1).Contrasts(19).Name = 'visual_hor_gt_tactile_hor';
  opt.result.Steps(1).Contrasts(19).MC =  'FWE';
  opt.result.Steps(1).Contrasts(19).p = 0.05;
  opt.result.Steps(1).Contrasts(19).k = 0;

  opt.result.Steps(1).Contrasts(20).Name = 'tactile_hor_gt_visual_hor';
  opt.result.Steps(1).Contrasts(20).MC =  'none';
  opt.result.Steps(1).Contrasts(20).p = 0.001;
  opt.result.Steps(1).Contrasts(20).k = 0;

  opt.result.Steps(1).Contrasts(21).Name = 'tactile_hor_gt_visual_hor';
  opt.result.Steps(1).Contrasts(21).MC =  'FWE';
  opt.result.Steps(1).Contrasts(21).p = 0.05;
  opt.result.Steps(1).Contrasts(21).k = 0;





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
