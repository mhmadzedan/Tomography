
function [xGrid, zGrid, tMatrix] = createTomographyGrid(maxX, maxZ, resX, resZ)
    % Create grid for tomography
    [xGrid, zGrid] = meshgrid(-maxX:resX:maxX, 0:-resZ:-maxZ);
    tMatrix = zeros(size(zGrid));
end

