function [ newB, num_zeros ] = process_block( B, tol )

  F = fft2(B);

  maxEle = max(abs(F));
  maxValue = max(maxEle)
  mask = (tol <= abs(F));
  newF = mask .* F;

  newB = uint8(real(ifft2(newF)));
  num_zeros = sum(sum(1-mask));
end