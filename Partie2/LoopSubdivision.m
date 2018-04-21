%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonction LoopSubdivision
% Permet d'effectuer la subdivision de Loop sur un ensemble de surfaces
% triangulaires
% Parametres : 
%               _coordinates : matrice a trois colonnes. Chaque ligne contient les 
%               coordonnes 3D d'un des points de la discretisation. Ces sommets seront 
%               identifies a l'indice de la ligne correspondante dans la matrice
%               coordinates.
%               _elements3 : matrice a trois colonnes. Chaque ligne contient les indices 
%               des sommets d'un element triangle, dans le sens antihoraire. 
%               _frontierIndex : Liste des indices des points sur la
%               frontiere ( Ordonnés selon le sens trigonometrique )
%               _ nb_iteration : Nombre d'iteration à realiser
% Sorties:
%               _coordinateUpdate :  Nouvelles coordonnées
%               _elementes3Update :  Nouvelle matrice d'indice
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ coordinateUpdate, elements3Update ] = LoopSubdivision( coordinate, elements3, frontierIndex, nb_iteration )

coordinateUpdate=coordinate;
elements3Update=elements3;

for i = 1:nb_iteration
    % Calcul des ODD POINTS 
   
    [coorOddVertices, MajIndexFrontierOdd ] = ComputeAllOdd( frontierIndex, coordinateUpdate , elements3Update);
    % RECONSRTUCTION ODD 
    % Triangles avec les odds + Points à la frontiere
    [ newElementsOdd, MajIndexFrontierOdd ] = OddReconstruction( coorOddVertices,MajIndexFrontierOdd ,elements3Update,coordinateUpdate,frontierIndex);
    
    % 2eme Partie       
    [coorEvenVertices ,MajIndexFrontierEven ] = ComputeAllEven( coordinateUpdate, elements3Update,frontierIndex ) ;
     % On enleve les doublons
     coorOddVertices=unique_stable(coorOddVertices);
     MajIndexFrontierOdd=MajIndexFrontierOdd+size(coorEvenVertices,1);
     newElementsOdd=newElementsOdd+size(coorEvenVertices,1);
     MajIndexFrontierOdd=unique_stable(MajIndexFrontierOdd);
    % Reconstruction Even
    [ elements3f, MajIndexFrontierEven ] = EvenReconstruction( coorEvenVertices,MajIndexFrontierEven ,elements3Update, newElementsOdd,coorOddVertices,coordinateUpdate,frontierIndex);
    elements3Update=elements3f;
    % Preparation pour la prochaine iteration
    coordinateUpdate = [coorEvenVertices;coorOddVertices];
    frontierIndex=[MajIndexFrontierEven';MajIndexFrontierOdd];
end

end

