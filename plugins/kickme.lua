local function run(msg, matches)
	local chat = get_receiver(msg)
	local user = "user#id"..msg.from.id
	if matches[1] == "kickme" and is_chat_msg(msg) then
		chat_del_user(chat, user, ok_cb, true)
	end
end

return {
  description = "Plugin to kick yourself.", 
  usage = {
    "!kickme : Kick yourself from group",
  },
  patterns = {
    "^!(kickme)$",
  }, 
  run = run,
}
