/// @description Setup
game_save_complete(game_save_current());
game_window_update_ports(1);
game_screen_fade_in(BlackFadeShd, 22);
game_audio_enqueue_music(CreditsMusic, 0, false);

postHeader = instance_create_layer(header_x, header_y, "gui", LabeledGameSign);
postHeader.image_blend = header_color;
postHeader.font = font;
postHeader.halign = fa_center;
postHeader.valign = fa_middle;
postHeader.separation = separation;
postHeader.width = header_width;

postText = instance_create_layer(text_x, text_y, "gui", LabeledGameSign);
postText.image_blend = text_color;
postText.font = font;
postText.halign = fa_center;
postText.valign = fa_middle;
postText.separation = separation;
postText.width = text_width;

ds_queue_enqueue(headers, "SONIC FOR GMS");
ds_queue_enqueue(text, "CAST OF CHARACTERS");

ds_queue_enqueue(headers, "SPRITE RIPS BY");
ds_queue_enqueue(text, @"1001\n
\n
CHAOFANATIC\n
\n
DIVINE INSECT\n
\n
DOC MELONHEAD");

ds_queue_enqueue(headers, "SPRITE RIPS BY");
ds_queue_enqueue(text, @"DOLPHMAN\n
\n
FLARE\n
\n
GAMEMASTER12\n
\n
MARIOMADNESS734");

ds_queue_enqueue(headers, "SPRITES RIPS BY");
ds_queue_enqueue(text, @"MERCURY\n
\n
PAVELDECHEV0604\n
\n
PORTEWEEKER\n
\n
RANDOM TALKING BUSH");

ds_queue_enqueue(headers, "SPRITES RIPS BY");
ds_queue_enqueue(text, @"SID STARKILLER\n
\n
SUPACHAO\n
\n
TECHOKAMI");

ds_queue_enqueue(headers, "SOUND RIPS BY");
ds_queue_enqueue(text, @"MR. LANGE\n
\n
RANDOM TALKING BUSH");

ds_queue_enqueue(headers, "MUSIC BY");
ds_queue_enqueue(text, @"JUNKO SHIRATSU\n
\n
MARIKO NANBA\n
\n
MASATO NAKAMURA\n
\n
SEAN EVANS\n
\n
TEE LOPES");

ds_queue_enqueue(headers, "SPECIAL THANKS TO");
ds_queue_enqueue(text, @"CARLOS USHIROMIYA\n
\n
DAMIZEAN\n
\n
JAVIER MORA\n
\n
JONATHAN LAM");

ds_queue_enqueue(headers, "SPECIAL THANKS TO");
ds_queue_enqueue(text, @"KAIN\n
\n
MERCURY\n
\n
NOAH COPELAND\n
\n
PIXELATED_POPE");

ds_queue_enqueue(headers, "SPECIAL THANKS TO");
ds_queue_enqueue(text, @"POLAR EXELION\n
\n
ROGUEYOSHI\n
\n
XOT");

ds_queue_enqueue(headers, "DEVELOPED BY");
ds_queue_enqueue(text, "VECTORSATYR");

ds_queue_enqueue(headers, "CONTENT BELONGS TO");
ds_queue_enqueue(text, @"SEGA\n
\n
SONIC TEAM");

ds_queue_enqueue(headers, "THANK YOU FOR PLAYING");
ds_queue_enqueue(text, "SEE YOU NEXT TIME");