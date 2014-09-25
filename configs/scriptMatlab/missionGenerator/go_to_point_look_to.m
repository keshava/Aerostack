function [ mission_text ] = go_to_point_look_to( id_num, point_to_go_point_name, target_x, target_y, target_z, point_to_look_column_name, point_to_look_x, point_to_look_y)
%GO_TO_POINT_LOOK_TO Summary of this function goes here
%   Detailed explanation goes here

mission_text = ...
    	['\t\t<task description="id:', num2str(id_num),' Move to point ', point_to_go_point_name, ' looking at column ', point_to_look_column_name,'">\n', ... 
			'\t\t\t<config>\n', ... 
				'\t\t\t\t<id>',num2str(id_num),'</id>\n', ... 
			'\t\t\t</config>\n', ... 
			'\t\t\t<command>move</command>\n'];
        
        if ( isnumeric(target_x) || isnumeric(target_y) || isnumeric(target_z))
            mission_text = [ mission_text, ...
                '\t\t\t<point> <!-- point ', point_to_go_point_name,' -->\n'];
            if ( isnumeric(target_x) )
                mission_text = [ mission_text, '\t\t\t\t<x>',num2str(target_x),'</x>\n'];
            end
            if ( isnumeric(target_y) )
                mission_text = [ mission_text, '\t\t\t\t<y>',num2str(target_y),'</y>\n'];
            end
            if ( isnumeric(target_z) )
                mission_text = [ mission_text, '\t\t\t\t<z>',num2str(target_z),'</z>\n'];
            end
            mission_text = [ mission_text, ...
                '\t\t\t</point>\n'];
        end
        
		mission_text = [ mission_text, ...
			'\t\t\t<pointToLook> <!-- column ',point_to_look_column_name,' -->\n', ... 
				'\t\t\t\t<x>',num2str(point_to_look_x),'</x>\n', ... 
				'\t\t\t\t<y>',num2str(point_to_look_y),'</y>\n', ... 
			'\t\t\t</pointToLook>\n', ... 
		'\t\t</task>\n'];

end
