%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cluster all the pixels in the image using given centroids
% For each pixel the closest centroid to it is found and returned in labels
% vector.
function labels = cluster( IVec, centroids )
    nClusters = length( centroids );
    nPixels   = length(IVec);
    centroids = centroids * ones( 1, nPixels ); % duplicate centroids
    pixels    = ( IVec * ones( 1, nClusters ) ).'; % duplicate pixels
    distsAbs = abs( centroids - pixels );
    [~,labels] = min( distsAbs );
end
