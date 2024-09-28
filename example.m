hdf5_file = 'FKV_oscillator_database.h5';

mu1 = h5read(hdf5_file,'/mu');
alpha1 = h5read(hdf5_file,'/alpha');
w1 = h5read(hdf5_file,'/w');

N_mu = length(mu1);
N_alpha = length(alpha1);
N_w = length(w1);

rng('shuffle');
i = randi([1,N_mu]);
j = randi([1,N_alpha]);
k = randi([1,N_w]);

mu = mu1(i);
alpha = alpha1(j);
w = w1(k);

iv  = h5read(hdf5_file,'/isVibrating',[i,j,k], [1,1,1]);
w0  = h5read(hdf5_file,'/w0',[i,j,k], [1,1,1]);
xi  = h5read(hdf5_file,'/xi',[i,j,k], [1,1,1]);
epsilon = h5read(hdf5_file,'/epsilon',[i,j,k], [1,1,1]);
x1avg  = h5read(hdf5_file,'/x1avg',[i,j,k], [1,1,1]);

fprintf('FKV oscillator (mu,alpha,w) = (%f,%f,%f):\n',mu,alpha,w);
fprintf('+\tisVibrating=%d,\n',iv);
fprintf('+\tw0=%f,\n',w0);
fprintf('+\txi=%f,\n',xi);
fprintf('+\tepsilon=%f,\n',epsilon);
fprintf('+\tx1avg=%f,\n',x1avg);