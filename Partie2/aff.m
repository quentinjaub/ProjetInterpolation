
disp('Loop Subdivision')
disp('------------------------------------------')
disp('Enter a flag : ')
disp('1 -> 2D Triangle')
disp('2 -> Carre')
disp('3 -> 2 Faces Cube  ')
disp('4 -> tetrahedron')
disp('5 -> empty cube ')
disp('6 ->  Pyramide  ')
n=input('7 -> Cube : ');
nb_it = input('Nombre d iteration : ');
disp('------------------------------------------')

switch n
    case 1
      % Triangle
        figure(1)
        b=[0 0 0;1 0 0; 0.5 1 0];
        trib= [ 1 2 3];
        trisurf( trib, b(:,1),b(:,2),b(:,3))
        figure(2)
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [1;2;3],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));

    case 2
      % Carre
        figure(1)
        b=[0 0 0;0 1 0; 1 1 0; 1 0 0 ];
        trib=[1 4 3; 1 3 2];
        trisurf( trib, b(:,1),b(:,2),b(:,3))
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [1;2;3;4],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
        
    case 3
      % Une partie du cube
        figure(1)
        b=[0 0 0;0 1 0; 1 1 0; 1 0 0; 0 1 1; 0 0 1 ];
        trib=[1 4 3; 1 3 2; 6 5 2; 6 2 1];
        trisurf( trib, b(:,1),b(:,2),b(:,3))
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [1;2;3;4;5;6],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
     case 4
       %tetraedre
        figure(1)
        b=[0 0 0;1 0 0; 0.5 0 1; 0.5 0.5 0.5 ];
        trib=[1 2 3; 2 3 4; 4 3 1; 1 2 4];
        trisurf( trib, b(:,1),b(:,2),b(:,3));
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));  
        
     case 5
      % cube
        figure(1)
        b=[0 0 0;0 1 0; 1 1 0; 1 0 0; 0 1 1; 0 0 1; 1 1 1; 1 0 1 ];
        trib=[4 3 2; 4 2 1; 6 2 5 ; 6 1 2; 8 5 7; 8 6 5; 4 8 7; 4 7 3];
        trisurf( trib, b(:,1),b(:,2),b(:,3));
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [1;2;3;4;5;6;7;8],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
     
    case 6
      % Pyramide
        figure(1)
        b=[0 0 0;0 1 0; 1 1 0; 1 0 0;0.5 0.5 1 ];
        trib=[ 4 3 5; 5 3 2; 1 5 2; 1 4 3;1 3 2;1 4 5];
        trisurf( trib, b(:,1),b(:,2),b(:,3));
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
        
    case 7
      % cube
        figure(1)
        b=[0 0 0;0 1 0; 1 1 0; 1 0 0; 0 0 1; 0 1 1; 1 1 1; 1 0 1 ];
        trib=[4 3 2; 1 4 2;8 7 3; 4 8 3; 2 7 6; 2 3 7; 1 4 8; 1 8 5; 5 6 8; 6 7 8;2 6 5;1 2 5];
        trisurf( trib, b(:,1),b(:,2),b(:,3));
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
     case 8
      % test
        figure(1)
        b=[0 0 0;0 1 0; 1 1 1; 2 1 1;1 0 1;2 0 1; 3 1 0; 3 0 0 ; 4 0 0; 4 1 0;5 1 1;6 1 1 ;5 0 1; 6 0 1 ];
        trib=[1 4 3; 1 3 2;4 5 6; 4 5 3; 5 8 7; 5 6 8;7 8 9; 7 9 10; 10 9 12; 10 11 12;12 13 14; 11 12 13];
        trisurf( trib, b(:,1),b(:,2),b(:,3));
        figure(2)
        
        [ MatFinal, elements3Update ]=LoopSubdivision( b, trib , [1;2;3;4;5 ;6;7;8;9;10;11;12;13;14],nb_it );
        % Affichage
        trisurf(elements3Update,MatFinal(:,1),MatFinal(:,2),MatFinal(:,3),MatFinal(:,3));
end
        