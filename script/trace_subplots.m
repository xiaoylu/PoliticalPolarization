function trace_subplots()
  set(0,'defaultAxesFontSize',30)
  
  figure(1)
  M = dlmread('3d_trace_2.50.txt');
  trace_ScatteredInterpolant(M, '$a=2.5$');
  brighten(.5);
  
  box on
  ax = gca;
  ax.ZGrid = 'on';
  ax.XGrid = 'on';
  ax.YGrid = 'on';
  
  figure(2)
  M = dlmread('3d_trace_0.60.txt');
  trace_ScatteredInterpolant(M, '$a=0.6$');
  brighten(.5);
  
  box on
  ax = gca;
  ax.ZGrid = 'on';
  ax.XGrid = 'on';
  ax.YGrid = 'on';
  
  %print -djpeg 3dsurf.jpg;
  %close(f);
  
end
