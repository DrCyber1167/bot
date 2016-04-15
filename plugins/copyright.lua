do

local function run(msg, matches)
  if matches[1]:lower() == 'firebot or fire' then --change this with anything you want
    send_document(get_receiver(msg), "./data/me/fire.webp", ok_cb, false) --put here sticker location(if you want)
      return [[ 
  Fire Bot
  
  
  by parsa alemi 
  

advanced telegram bot based on cli

 ]]
  end
end

return {
  patterns = {
    "^[!/]([Ff]ire)$",
    "^([Ff]ire)$",
    "^[!/]([Ff]irebot)$",
    "^([Ff]irebot)$",
    "^(@firebot)$",
    
    },
  run = run
}
end
