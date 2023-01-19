ai = {}
ai.memory = {}
function ai.think(str)
	local key
	local master
	for value in string.gmatch(str, "%a+") do
		if key then
			if ai.memory[key] then
				ai.memory[key][#ai.memory[key] + 1] = value
			else
				ai.memory[key] = {[1] = value}
			end
		else
			master = value
		end
		key = value
	end
	return master, true
end
function ai.say(subject, master)
	if master then
		io.write(subject)
	end
	if ai.memory[subject] then
		int = math.random(1, #ai.memory[subject])
		io.write(" " .. ai.memory[subject][int])
		ai.say(ai.memory[subject][int])
	else
		io.write("\n")
	end
end
while true do
	io.write("# ")
	ai.say(ai.think(io.read()))
end
