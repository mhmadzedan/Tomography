function [pIndices, posMatrix] = computeAntennaPairs(nAntennas)
    % Generate indices for antenna pairs
    k = 0;
    pIndices = zeros(2, nAntennas*(nAntennas+1)/2);
    posMatrix = zeros(nAntennas);
    for i = 1:nAntennas
        for j = i:nAntennas
            k = k + 1;
            pIndices(:, k) = [i; j];
            posMatrix(i, j) = k;
        end
    end
end
