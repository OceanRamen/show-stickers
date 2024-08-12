local drawRef = Card.draw
function Card:draw(layer)
	if self.ability and self.ability.set == "Joker" and self.area and self.area.type ~= "title" then
		self.sticker = get_joker_win_sticker(self.config.center)
	end
	drawRef(self, layer)
end
