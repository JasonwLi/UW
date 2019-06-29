function P_padded = pad15(P)
  [rows,columns,colours] = size(P);
  rm15 = mod(rows,15);
  cm15 = mod(columns,15);
  if rm15 > 0
    P_pad(:,:,1) = [P(:,:,1); zeros(15-rm15, columns)];
    P_pad(:,:,2) = [P(:,:,2); zeros(15-rm15, columns)];
    P_pad(:,:,3) = [P(:,:,3); zeros(15-rm15, columns)];
  else
    P_pad = P;
  end
  
  [rows,c1] = size(P_pad(:,:,1));
  if cm15 > 0
    P_padded(:,:,1) = [P_pad(:,:,1), zeros(rows, 15-cm15)];
    P_padded(:,:,2) = [P_pad(:,:,2), zeros(rows, 15-cm15)];
    P_padded(:,:,3) = [P_pad(:,:,3), zeros(rows, 15-cm15)];
  else
    P_padded = P_pad;
  end
end