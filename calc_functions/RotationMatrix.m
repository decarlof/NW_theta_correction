classdef RotationMatrix
    % This library contains all the functions which allow us to rotate the
    % detector and the sample
    properties(Constant)
    end
    
    
    methods(Static)
        
        function [Ry,Rx] = detector(del,gam)
            
            % This function writes the rotational matrix which describe the position
            % of the detector with respect to the outgoing beam. The reference frame is
            % sector 26 of APS
            
            
            Ry = [cosd(del) 0 sind(del);
                0 1 0;
                -sind(del) 0 cosd(del)];
            
            Rx=[1 0 0;
                0 cosd(gam) -sind(gam);
                0 sind(gam) cosd(gam)];
        end
        
        
        function [Rz,Ry_th,Ry_del,Rx] = NW(phi,th,del,gam)
            
            % This function writes the rotational matrix which describe the position
            % of the detector with respect to the outgoing beam. The reference frame is
            % sector 26 of APS
            
            Rz=[cosd(phi) -sind(phi) 0;
                sind(phi) cosd(phi) 0;
                0 0 1];
            
            Ry_th=[cosd(th) 0 sind(th);
                0 1 0;
                -sind(th) 0 cosd(th)];
            
            Ry_del = [cosd(-del) 0 sind(-del);
                0 1 0;
                -sind(-del) 0 cosd(-del)];
            
            Rx=[1 0 0;
                0 cosd(gam) -sind(gam);
                0 sind(gam) cosd(gam)];
        end
        
        
    end
    

end