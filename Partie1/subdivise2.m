function [X,Y,Z] = subdivise2(X0,Y0,Z0,deg,nsubd)

X = X0;
Y = Y0;
Z = Z0;

for isubd=1:nsubd
	Xdup = zeros(1,size(X,2)*2);
	Ydup = zeros(1,size(Y,2)*2);
    Zdup = zeros(1,size(Z,2)*2);
	% Dupliquer les points
	for i=1:size(X,2)
		Xdup(2*i-1) = X(i);
		Xdup(2*i) = X(i);
		Ydup(2*i-1) = Y(i);
		Ydup(2*i) = Y(i);
        Zdup(2*i-1) = Z(i);
		Zdup(2*i) = Z(i);
	end
	for k=1:deg
		sdup = size(Xdup,2);
		tmpX = Xdup(1);
		tmpY = Ydup(1);
		tmpZ = Zdup(1);
		for i=1:sdup-1
			Xdup(i) = 0.5*Xdup(i) + 0.5*Xdup(i+1);
			Ydup(i) = 0.5*Ydup(i) + 0.5*Ydup(i+1);
            Zdup(i) = 0.5*Zdup(i) + 0.5*Zdup(i+1);
		end
		Xdup(sdup) = 0.5*Xdup(sdup)+0.5*tmpX;
		Ydup(sdup) = 0.5*Ydup(sdup)+0.5*tmpY;
    Zdup(sdup) = 0.5*Zdup(sdup)+0.5*tmpZ;
	end
	X = Xdup;
	Y = Ydup;
  Z = Zdup;
end