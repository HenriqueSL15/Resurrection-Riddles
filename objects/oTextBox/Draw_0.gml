draw_sprite(sTextBox,0, x, y)
draw_set_font(fFont)
draw_set_color(c_black)
draw_text_ext(x + margin, y + margin, text, stringHeight, boxWidth - margin)