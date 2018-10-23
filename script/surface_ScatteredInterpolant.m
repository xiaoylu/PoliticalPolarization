function surface_ScatteredInterpolant(M, str, tmin, tmax)  

  X = M(:,[1 2]);
  V = M(:,[3]);
  meshX = sort(unique(X(:, [1])));
  meshY = sort(unique(X(:, [2])));
  F = scatteredInterpolant(X, V,'natural');
  [Xq,Yq] = meshgrid(meshX, meshY);
  Vq = F(Xq,Yq);
  g = surf(Xq, Yq, Vq);
  
  set(g,'LineStyle','none')
  
  caxis([tmin tmax]);
  axis([0.1 0.9 0 1 tmin tmax]);
  
  set(gca,'Zdir','reverse');
  title(str,'Interpreter','latex');
  
  %print -djpeg 3dsurf.jpg;
  %close(f);
end
