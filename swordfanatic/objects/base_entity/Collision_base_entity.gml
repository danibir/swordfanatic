var push = max(0, 1 / (5 + distance_to_object(other))) * other.weight / sqrt(weight)
var pos = pos_direction(push, point_direction(other.x, other.y, x, y))
move_and_collide(pos[0], pos[1], global.tilemap)