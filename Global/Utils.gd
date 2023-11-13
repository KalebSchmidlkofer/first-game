extends Node

const SAVE_PATH = 'res://savegame.bin'
var savedata: Dictionary = {
		"playerHP": Game.playerHP,
		"Gold": Game.Gold,
		"Cherry": Game.Cherry,
		"Gems": Game.Gem,
	}	

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var jstr = JSON.stringify(savedata)
	file.store_line(jstr)
	
	
func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH):
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				savedata
