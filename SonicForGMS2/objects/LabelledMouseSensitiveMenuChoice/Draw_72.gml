/// @description  Setup
if (not setup) {
    draw_set_font(font);
    var width = string_width(string_hash_to_newline(label));
    var height = string_height(string_hash_to_newline(label));
    
    switch (halign) {
    case fa_left:
        left = floor(x);
        right = ceil(x + width);
        break;
    
    case fa_center:
        left = floor(x - floor(width));
        right = ceil(x + floor(width));
        break;
    
    case fa_right:
        left = floor(x - width);
        right = ceil(x);
        break;
    }
    
    switch (valign) {
    case fa_top:
        top = floor(y);
        bottom = ceil(y + height);
        break;
    
    case fa_middle:
        top = floor(y - floor(height));
        bottom = ceil(y + floor(height));
        break;
    
    case fa_bottom:
        top = floor(y - height);
        bottom = ceil(y);
        break;
    }

    setup = true;
}

