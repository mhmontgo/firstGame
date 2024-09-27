var sprite_name = "spr_player_" + movement + "_" + facing
sprite_name = asset_get_index(sprite_name);



if (sprite_exists(sprite_name)) {
    draw_sprite(sprite_name, image_index, x, y);
}

sprite_name = "spr_armor_" + armor + "_" + movement + "_" + facing
draw_text(10, 10, sprite_name);
sprite_name = asset_get_index(sprite_name);

if (sprite_exists(sprite_name)) {
    draw_sprite(sprite_name, image_index, x, y);
}