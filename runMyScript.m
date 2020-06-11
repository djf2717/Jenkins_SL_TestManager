%mdl = 'sf_car';
% load_system(mdl)
% simMode = get_param(mdl, 'SimulationMode');
% set_param(mdl, 'SimulationMode', 'normal')
% cs = getActiveConfigSet(mdl);
% mdl_cs = cs.copy;
% set_param(mdl_cs,...
%          'SaveState','on','StateSaveName','xoutNew',...
%          'SaveOutput','on','OutputSaveName','youtNew')
% simOut = sim(mdl, mdl_cs);
% save('data.mat','simOut');


% Path to the example test file
exampleFile = 'SystemTesting.mldatx';

% Load the example test file
tc=sltest.testmanager.load(exampleFile);

% Run the test case and return an object with results data
ResultsObj = run(tc);

% View the test file in the test manager
% sltest.testmanager.view;

% Generate a report from the results data
filePath = 'test_report.pdf';
sltest.testmanager.report(ResultsObj,filePath,...
          'Author','Test Engineer',...
          'IncludeSimulationSignalPlots',true,...
          'IncludeComparisonSignalPlots',true,...
          'IncludeTestResults',0);
