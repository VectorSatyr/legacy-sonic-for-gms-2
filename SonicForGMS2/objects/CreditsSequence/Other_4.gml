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

ds_queue_enqueue(headers, "SPRITE RIPPERS");
ds_queue_enqueue(text, @"1001\n
\n
CHAOFANATIC\n
\n
DIVINE INSECT\n
\n
DOC MELONHEAD");

ds_queue_enqueue(headers, "SPRITE RIPPERS");
ds_queue_enqueue(text, @"DOLPHMAN\n
\n
FLARE\n
\n
GAMEMASTER12\n
\n
JIGGLYPUFFGIRL");

ds_queue_enqueue(headers, "SPRITE RIPPERS");
ds_queue_enqueue(text, @"MARIOMADNESS734\n
\n
MERCURY\n
\n
THE OBSERVER\n
\n
PAVELDECHEV0604");

ds_queue_enqueue(headers, "SPRITE RIPPERS");
ds_queue_enqueue(text, @"PORTEWEEKER\n
\n
RANDOM TALKING BUSH\n
\n
SID STARKILLER\n
\n
SUPACHAO");

ds_queue_enqueue(headers, "SPRITE RIPPERS");
ds_queue_enqueue(text, @"TECHOKAMI\n
\n
TRIANGLY\n
\n
VOID-THE-BAT");

ds_queue_enqueue(headers, "SPRITE EDITORS");
ds_queue_enqueue(text, @"TECHOKAMI\n
\n
VECTORSATYR");

ds_queue_enqueue(headers, "SOUND RIPPERS");
ds_queue_enqueue(text, @"MR LANGE\n
\n
RANDOM TALKING BUSH");

ds_queue_enqueue(headers, "MUSIC RIPPERS");
ds_queue_enqueue(text, @"VALLEY BELL");

ds_queue_enqueue(headers, "MUSIC COMPOSERS");
ds_queue_enqueue(text, @"SEAN EVANS\n
\n
TEE LOPES");

ds_queue_enqueue(headers, "PROGRAMMERS");
ds_queue_enqueue(text, @"BLUECOREG\n
\n
CARLOS USHIROMIYA\n
\n
VECTORSATYR");

ds_queue_enqueue(headers, "ADDITIONAL PROGRAMMING");
ds_queue_enqueue(text, @"JASON ALLEN DOUCETTE\n
\n
MERCURY\n
\n
PIXELATED_POPE\n
\n
XOT");

ds_queue_enqueue(headers, "SPECIAL THANKS");
ds_queue_enqueue(text, @"BLUECOREG\n
\n
CARLOS USHIROMIYA\n
\n
DAMIZEAN");

ds_queue_enqueue(headers, "SPECIAL THANKS");
ds_queue_enqueue(text, @"JAVIER MORA\n
\n
JONATHAN LAM\n
\n
KAIN");

ds_queue_enqueue(headers, "SPECIAL THANKS");
ds_queue_enqueue(text, @"MERCURY\n
\n
NOAH COPELAND\n
\n
POLAR EXELION\n
\n
ROGUEYOSHI");

ds_queue_enqueue(headers, "PRESENTED BY");
ds_queue_enqueue(text, "VECTORSATYR");

ds_queue_enqueue(headers, "CONTENT BELONGS TO");
ds_queue_enqueue(text, @"SEGA\n
\n
SONIC TEAM");

ds_queue_enqueue(headers, "THANK YOU FOR PLAYING");
ds_queue_enqueue(text, "SEE YOU NEXT TIME");