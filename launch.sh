local function run(msg)
  local bot_id = 47318914
  if msg.action and msg.action.type then
    if msg.action.type == 'chat_del_user' and msg.action.user.id == 139534999 then
      chat_add_user('chat#id'..msg.to.id, 'user#id'..139534999, ok_cb, true)
    end
  end
end

return {
  description = "Plugin to delete him self from groups.", 
  usage = {},
  patterns = {"^!!tgservice (.+)$"}, 
  run = run
}
