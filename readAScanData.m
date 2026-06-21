function aScans = readAScanData(fPath, sLength, nScans)
    % Load A-scan data from file
    fileID = fopen(fPath, 'r');
    aScans = fread(fileID, [sLength, nScans], 'int16').';
    fclose(fileID);
end


