classdef StageDevice < io.github.stage_vss.devices.StageDevice
    
    methods
        
        function obj = StageDevice(host, port)
            if nargin < 1
                host = 'localhost';
            end
            if nargin < 2
                port = 5678;
            end
            obj@io.github.stage_vss.devices.StageDevice(host, port);
        end
        
        function p = um2pix(obj, um) %#ok<INUSL>
            p = um;
        end
        
    end
    
end

