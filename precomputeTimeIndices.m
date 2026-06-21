function tIdxMatrix = precomputeTimeIndices(xGrid, zGrid, pairs, positions, speed, sFreq, sLength)
    % Precompute time indices for all antenna pairs
    nPairs = size(pairs, 2);
    tIdxMatrix = zeros(size(zGrid, 1), size(xGrid, 2), nPairs);
    for k = 1:nPairs
        outPos = positions(pairs(1, k));
        inPos = positions(pairs(2, k));
        totalDist = sqrt((xGrid - outPos).^2 + zGrid.^2) + sqrt((xGrid - inPos).^2 + zGrid.^2);
        tIdx = round(totalDist / speed / 1000 * sFreq);
        tIdx(tIdx < 1) = 1;
        tIdx(tIdx > sLength) = sLength;
        tIdxMatrix(:, :, k) = tIdx;
    end
end
