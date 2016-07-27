classdef SimulatedDaqWithMultiClampAndStage < edu.washington.riekelab.simulate.rigs.SimulatedDaqWithMultiClamp
    
    methods
        
        function obj = SimulatedDaqWithMultiClampAndStage()
            import symphonyui.builtin.daqs.*;
            import symphonyui.builtin.devices.*;
            import symphonyui.core.*;
            
            daq = obj.daqController;
            
            stage = edu.washington.riekelab.simulate.devices.StageDevice('localhost');
            obj.addDevice(stage);
            
            frameMonitor = UnitConvertingDevice('Frame Monitor', 'V').bindStream(daq.getStream('ANALOG_IN.7'));
            obj.addDevice(frameMonitor);
        end
        
    end
    
end

