x = instance_nearest(x, y, obj_plrobj).x
y = instance_nearest(x, y, obj_plrobj).y

x = instance_nearest(x, y, map_part).x
y = instance_nearest(x, y, map_part).y

camera_set_view_pos(view_camera[0], x - global.camera_width / 2, y - global.camera_height / 2)