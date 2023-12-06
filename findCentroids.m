% Find the centroids corresponding to the clustering in labels
function centroids = findCentroids( IVec, labels, nClusters )    
    centroids = zeros(nClusters, 1);

    % Run on each cluster
    for i = 1:nClusters        
        IVeci = IVec( labels == i );  % Gray levels of all pixels in cluster i
        centroids(i) = mean( IVeci ); % new centroid
    end    
end
