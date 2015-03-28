function v = myTan(y,x)
    % returns atan in range [0, 2*pi] in degrees

    if nargin==1 %just in case the user only gives the value of y myatan(y)
        x=1;
    end
    
    v = nan;
    
    if x==0 && y==0
        v=0;
    end
    
    if x>0
        v=atan(y/x);
    end
    
    if y>=0 && x<0
        v=pi+atan(y/x);
    end
    
    if y<0 && x<0
        v=-pi+atan(y/x);
    end
    
    if y>0 && x==0
        v = pi/2;
    end
    
    if y<0 && x==0
        v =- pi/2;
    end
    
    if v<0
        v = v+2*pi;
    end
        
    v = 180 * v / pi;
end