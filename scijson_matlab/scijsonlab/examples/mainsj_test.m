% Scientific Json test file - V0.1b
% sSciJson (sj) is a set of function to create metadata for array.
% the resulting struct metadata field are used to automatically plot values
% with metadata as label and legends.


% === 1D data === %
% data
price_value = [1 4 2 5 3 8];

% metadata and save
price = makesjdata('Price', 'euro', price_value);
price2save = makesj1D(price);
savesj('my1Ddata.json', my1Ddata_coll);

% choose a bar graph for 1D data
figure();
plotsj1D(price2save);

% auto guess of the dimension of the data, and the plot to use
figure();
plotsj(price2save);


% === 2D data === %
% data
vtime = 1:10; % in s
voltage = [10 10.5 9 8 6 9 12 11 10.2 9.7]; % in V
voltage2 = voltage*100;
voltage2(1) = 1;

% metadata and save
time_sj = makesjdata('Time', 's', vtime);
voltage_sj = makesjdata('Voltage', 'V', voltage);
voltage_sj_2 = makesjdata('Voltage', 'V', voltage2);
data2save = makesj2D(time_sj, voltage_sj);
data2save2 = makesj2D(time_sj, voltage_sj_2);
savesj('my2Ddata_voltage.json', data2save);

% plot data
figure();
plotsj2D(data2save);
% plot multiple 2D data, then add a legend
plotsj2D(data2save2);
legend({'Measurement', 'Model'});

% auto guess of the plot type according to dimension of data
figure();
plotsj(data2save);

% === 3D data === %
% data, assuming convention row as x, col as y
d = [1:10];
e = 1:5;
% use ndgrid for x as row, and y as col convention
[dd,ee] = ndgrid(d, e);
score = 1./dd + 1./ee;

% metadata and save
d_sj = makesjdata('d', 'm', d);
e_sj = makesjdata('e', 'm', e);
score_sj = makesjdata('Score', 'm^-1', score);
sj3D_coll = makesj3D(d_sj, e_sj, score_sj);
savesj('my3Ddata_score.json', sj3D_coll);

% plot data

% plot as contours, projected along the rows (x)
figure();
contoursj3D_row(sj3D_coll);

% plot as contours, projected along the cols (y)
figure();
contoursj3D_col(sj3D_coll);

% plot as contours
figure();
contoursj3D(sj3D_coll);

% plot a 3D surface
figure();
plotsj3D(sj3D_coll);

% auto guess the plot according to dimension of the data
figure();
plotsj(sj3D_coll);


% === load data === %
% a simple loadjson is sufficient
testLoad = loadjson('my3Ddata_score.json');