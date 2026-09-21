desenha_efeito_branco(desenha_efeito_mola);
draw_text(x, y - 30, "Boss")



draw_rectangle_colour(x_barra, y + 22, x_barra + tam_barra * (hp_secundario/vida_max), y+14, c_orange, c_orange, c_orange, c_orange, 0);
draw_rectangle_colour(x_barra, y + 22, x_barra + tam_barra * (vida/vida_max), y+14, c_red, c_red, c_red, c_red, 0);
