clear all;
disp( ' Choisissez une surface : ');
disp( '1 -> exp(-((x-0.5)^2 + (y-0.5)^2)) ');
disp( '2 -> Triangles croises ( Infinity )');
disp( '3 -> Cube ouvert ( 2 ouvertures ) ');
disp( '4 -> Cube ferme ');
disp( '5 -> Cube creux ( Tore ) ');
i = input('i : ');
n = input('Degré : ');
nb_it = input('nb iterations : ');
[Mat] = saisi_points_3D(i);

figure(1)

% Surface de contrôle initiale %
% On referme la surface
MatFirst=[Mat, Mat(:,1,:)];
MatSec = [MatFirst ; MatFirst(1,:,:)];
surf(MatSec(:,:,1),MatSec(:,:,2),MatSec(:,:,3), MatSec(:,:,1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% axis([0 1 0 1 0 1]);
% Subdivision de la surface
[Matend] = subdivise3D( n, nb_it, Mat );
% On referme la nouvelle surface
Matf=[Matend , Matend(:,1,:)];
MatFinal = [Matf;Matf(1,:,:)];
figure(2)
% Affichage
surf(MatFinal(:,:,1),MatFinal(:,:,2),MatFinal(:,:,3));
% axis([0 1 0 1 0 1]);

title('B spline uniforme')
xlabel('x') % x-axis label
ylabel('y') % x-axis label
zlabel('Spline surface') % y-axis label
