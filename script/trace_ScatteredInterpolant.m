function trace_ScatteredInterpolant(M, str)
  
  X = M(:,[1 2]);
  V = M(:,[3]);
  meshX = sort(unique(X(:, [1])));
  meshY = sort(unique(X(:, [2])));
  F = scatteredInterpolant(X, V,'natural');
  [Xq,Yq] = meshgrid(meshX, meshY);
  Vq = F(Xq,Yq);
  surf(Xq, Yq, Vq);
  xlabel('Initial State $x_0$','FontSize',25, 'Interpreter','latex'), ylabel('Time $t$','FontSize',25, 'Interpreter','latex');
  zlabel('Polarization $x(t)$','FontSize',25, 'Interpreter','latex');
  set(gca,'Xdir','reverse');
  axis([0 1 0 1 0 1]);
  view(108, 20)
  title(str,'fontweight','b','FontSize',30, 'Interpreter','latex')
  
  %print -djpeg 3dsurf.jpg;
  %close(f);
end
