function [x]=ipulse(n)

l=length(n);
for t=1:l
    k=n(t);
    if k>=-4&&k<=-1
        x(t)=2*k+5;
    
    elseif k>=0&&k<=4
            x(t)=6;
        else
            x(t)=0;

    end
  
            
end
       
    

