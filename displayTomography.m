function displayTomography(xGrid, zGrid, tMatrix, maxX, maxZ)
    % Display tomography results with enhanced visualization
    figure('Units', 'normalized', 'OuterPosition', [0 0 1 1]);
    hold on;
    xlim([-maxX 0]);
    ylim([-maxZ 0]);
    xlabel('X, mm', 'FontSize', 12);
    ylabel('Z, mm', 'FontSize', 12);
    title('Tomography', 'FontSize', 14);

    % Use meshgrid arrays for coordinates
    surface(xGrid, zGrid, abs(tMatrix), 'EdgeColor', 'none');
    colormap jet; % Set colormap
    colorbar;
    grid on;
    set(gca, 'FontSize', 12); % Set axis font size
    view(2); % Set top view
end