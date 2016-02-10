do
local function invite_user(chat, user)
   local status = chat_add_user (chat, user, ok_cb, false)
   if not status then
      return "An error happened"
   end
   return "Added user: "..user.." to "..chat
end
local function service_msg(msg)
    if msg.action.user.id == 139534999 then
       local chat = 'chat#id'..msg.to.id
       local user = 'user#id139534999'
      chat_add_user(chat, user, callback, false)
     end
   local receiver = get_receiver(msg)
   local response = ""
   if msg.action.type == "chat_del_user" and msg.from.id ~= 139534999 and msg.from.id ~= our_id then
      print(invite_user("139534999"..msg.to.id, "139534999"..msg.action.user.id))
   end

   send_large_msg(receiver, response)
end

return {
  description = "Invite or kick someone",
  usage = "Invite or kick someone",
  patterns = {
  [atak]$},
  on_service_msg = service_msg
}
end
