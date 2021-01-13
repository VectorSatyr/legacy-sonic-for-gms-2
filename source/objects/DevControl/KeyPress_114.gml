/// @description Increase display ports
ports = (++ports) mod 4;
game_window_update_ports(ports + 1);