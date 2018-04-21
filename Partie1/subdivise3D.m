function [ Mat ] = subdivise3D( n,nb_it, MatPts )


Mati=MatPts;
for i = 1:size(Mati,1) % Parcours des lignes
    % Subdivision sur la ligne i
    Mati(i,:,1)
    Mati(i,:,2)
    Mati(i,:,3)
    [X,Y,Z] = subdivise2( Mati(i,:,1), Mati(i,:,2), Mati(i,:,3),  n, nb_it );
    % Pour 9 points -> X de taille 16
    % On stocke les noveaux points dans newMat
    newMati(i,:,1)=X;
    newMati(i,:,2)=Y;
    newMati(i,:,3)=Z;
end
% Nouvelle matrice avec des nouveaux points sur chaque ligne
newMat=newMati;
% Parcours sur les colonnes de newMat
for j = 1:size(newMat,2)
    % Pour x de taille 16 -> size(newMat,2)=16;
    [Xe,Ye,Ze] = subdivise2( newMat(:,j,1)', newMat(:,j,2)', newMat(:,j,3)',  n, nb_it );
    % On stocke les noveaux points dans Matid
    Matid(:,j,1)=Xe';
    Matid(:,j,2)=Ye';
    Matid(:,j,3)=Ze'; 
end
Mat=Matid;



