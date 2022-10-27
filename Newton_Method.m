function []=Newton_Method(func,Xo,n)

syms x ;

New_Func=diff(func,x,1);

if(subs(New_Func,(x),(Xo))~=0)
    c=Xo;
    for i=1:n
        q=c-(func(c))/(subs(New_Func,(x),(c)));
        c=q;
    end
 fprintf("Xr = %4f. \n",c);
else

disp('Newton-Raphson Method Failed');
end


end