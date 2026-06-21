function tMatrix = generateTomography(tMatrix, xGrid, zGrid, pairs, posMatrix, aScans, tIdxMatrix)
    % Generate tomography data using precomputed time indices
    for i = 1:size(xGrid, 2)
        for j = 1:size(zGrid, 1)
            for k = 1:size(pairs, 2)
                outAnt = pairs(1, k);
                inAnt = pairs(2, k);
                if posMatrix(outAnt, inAnt) > 0 && posMatrix(outAnt, inAnt) <= size(aScans, 1)
                    tMatrix(j, i) = tMatrix(j, i) + aScans(posMatrix(outAnt, inAnt), tIdxMatrix(j, i, k));
                end
            end
        end
    end
end
