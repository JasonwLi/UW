function [ compressedP, compression_rate ] = compress_image( P, tol )
  [rows,columns,colours] = size(P);
  
  paddedP = pad15(P);
  padded_rows = size(paddedP,1);
  padded_columns = size(paddedP,2);

  compressedP = uint8(zeros(size(paddedP)));
  num_zeros = 0;

  for colour = 1:3
    rows_of_15 = rows/15;
    cols_of_15 = columns/15;
    for r = 0:rows_of_15 - 1
      for c = 0:cols_of_15 - 1
        block = paddedP(r*15+1:r*15+15, c*15+1:c*15+15, colour);
        [modified,nz] = process_block( block, tol );
        num_zeros = num_zeros + nz;
        compressedP(15*r+1:15*r+15, 15*c+1:15*c+15,colour) = uint8(modified);
      end
    end
  end
  
  compressedP = compressedP(1:rows, 1:columns, :);
  compression_rate = num_zeros / (padded_columns* padded_rows * 3) * 100;
end