classdef Random
    properties
        random_arr {mustBeFinite} 
        size (1,1) {mustBeFinite, mustBeNumeric} = 10;
    end
    methods
        function obj = Random(size)
            if nargin == 1
                obj.size = size;
            end
            obj.random_arr = rand(obj.size);
        end
        function obj = changeSize(obj,size)
           obj.size = size;
           obj.random_arr = rand(size);
        end
    end
end