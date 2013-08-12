function phi = divSphPar(x,y,z,k)

%function phi = divSphPar(x,y,z,k)
%paraxial approximation to a diverging spherical wave

phi = (1i .* k)/(2 .* pi .* z) .* exp(-1i.*k.*(x.*x + y.*y + z.*z)/(2.*z));
end

