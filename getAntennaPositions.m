function aPos = getAntennaPositions(nAntennas, spacing)
    % Calculate antenna positions
    offset = nAntennas * spacing / 2;
    aPos = linspace(-offset, offset - spacing, nAntennas);
end
