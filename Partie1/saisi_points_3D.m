function [Mat] = saisi_points_3D(i)


switch i
    case 1 
        % forme arbitraire
        Mat = grille();
        
        
    case 2
        %%%%%Triangles croises -> infinity
        Mat=zeros(2,4,3);
        Mat(1,:,1)=[ 1 , 2 , 3 , 4 ];
        Mat(1,:,2)=[ 4 , 4 , 4 , 4 ];
        Mat(1,:,3)=[ 0 , 1 , 0 , 1 ];

        Mat(2,:,1)=[ 1 , 2 , 3 , 4 ];
        Mat(2,:,2)=[ 0, 0, 0, 0 ];
        Mat(2,:,3)=[ 0 , 1 , 0 , 1 ];

    case 3
        Mat=zeros(2,4,3);
        %%%%% Cube ouvert
        Mat(1,:,1)=[ 0 , 0 , 1 , 1 ]; % Face arriere
        Mat(1,:,2)=[ 0 , 1 , 1 , 0 ];
        Mat(1,:,3)=[ 1 , 1 , 1 , 1 ];

        Mat(2,:,1)=[ 0 , 0 , 1 , 1 ]; % Face avant
        Mat(2,:,2)=[ 0, 1 , 1 , 0 ];
        Mat(2,:,3)=[ 0 , 0 , 0 , 0 ];

    case 4
        %%%%% Cube
        % ORDRE DES POINTS A CHANGER
        Mat=zeros(4,6,3);
        Mat(:,:,1)=[0 1 1 0 0 0;   
                    1 1 0 0 1 1;
                    1 1 0 0 1 1;
                    0 1 1 0 0 0];
                
        Mat(:,:,2)=[0 0 1 1 0 0;
                    0 1 1 0 0 0;
                    0 1 1 0 1 1;
                    0 0 1 1 1 1];
                
        Mat(:,:,3)=[0 0 0 0 0 1;
                    0 0 0 0 0 1;
                    1 1 1 1 0 1;
                    1 1 1 1 0 1];

      case 5
        Mat=zeros(4,4,3);
        %%%%% Tore
        Mat(1,:,1)=[ 0 , 0 , 1 , 1 ];    % Face arriere
        Mat(1,:,2)=[ 0 , 1 , 1 , 0 ];
        Mat(1,:,3)=[ 0.5 , 0.5 , 0.5 , 0.5 ];

        Mat(2,:,1)=[ 0.35 , 0.35 , 0.55 , 0.55];  %petit parallelepipede
        Mat(2,:,2)=[ 0.35 , 0.55 , 0.55 , 0.35 ];
        Mat(2,:,3)=[ 0.5 , 0.5 , 0.5 , 0.5 ];
        
        Mat(3,:,1)=[ 0.35 , 0.35 , 0.55 , 0.55];    % Face avant
        Mat(3,:,2)=[ 0.35 , 0.55 , 0.55 , 0.35 ];
        Mat(3,:,3)=[ 0 , 0 , 0 , 0 ];
        
        Mat(4,:,1)=[ 0 , 0 , 1 , 1 ];  %petit parallelepipede
        Mat(4,:,2)=[ 0, 1 , 1 , 0 ];
        Mat(4,:,3)=[ 0 , 0 , 0 , 0 ];
               
        
        
end 




