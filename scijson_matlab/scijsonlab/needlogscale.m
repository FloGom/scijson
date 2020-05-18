function [logswitch] = needlogscale(array)
%NEEDLOGSCALE test wether the array data span over 2 or more decade. If so
%logswitch is set to True.

    minX = min(array);
    maxX = max(array);
    % log axes only for positiv values
    logswitch = false;
    if minX > 0
        %log axes only for more than one decade
        if (log10(maxX) - log10(minX)) > 1
            logswitch = true;
        end
    end
end

