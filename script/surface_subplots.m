function surface_subplots() 
  %oldcmap = colormap;
  %colormap( flipud(oldcmap) );
  set(0,'defaultAxesFontSize',30)
   
  figure(1)
  %subplot(1, 2, 1)
  M = dlmread('surface_0.60.txt');
  surface_ScatteredInterpolant(M, '$a=0.6$', 0, 0.3);
  view(130, 55);
  
  % Create xlabel
  xlabel({'Utility $u$'},'HorizontalAlignment','center',...
    'Rotation',36,...
    'Interpreter','latex');
  % Create ylabel
  ylabel({'Polarization $x(t)$'},'Rotation',-23,...
    'Interpreter','latex');
  % Create zlabel
  zlabel('Time $t$','Interpreter','latex');

  box on
  ax = gca;
  ax.ZGrid = 'on';
  ax.XGrid = 'on';
  ax.YGrid = 'on';
  
  figure(2)
  %subplot(1, 2, 2)
  M = dlmread('surface_2.50_tipping_points.txt');
  surface_ScatteredInterpolant(M, '$a=2.5$', 0, 1.0);
  view(70, 55);
  
  % Create xlabel
  xlabel('Utility $u$','Rotation',-59,'Interpreter','latex');
  % Create ylabel
  ylabel('Polarization $x(t)$','Rotation',11,...
    'Interpreter','latex');
  % Create zlabel
  zlabel('Time $t$','Interpreter','latex');

  %brighten(.4);
  box on
  ax = gca;
  ax.ZGrid = 'on';
  ax.XGrid = 'on';
  ax.YGrid = 'on';
  
end
