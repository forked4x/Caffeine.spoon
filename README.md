# Caffeine.spoon

Prevents display sleep and keeps Microsoft Teams status as "Available".

## Install
```bash
mkdir -p ~/.hammerspoon/Spoons
git clone https://github.com/forkd4x/Caffeine.spoon.git ~/.hammerspoon/Spoons/Caffeine.spoon
```

## Configure
Add to `~/.hammerspoon/init.lua`
```lua
hs.loadSpoon("Caffeine")

spoon.Caffeine:bindHotkeys({
  toggle = {{"cmd", "alt", "ctrl"}, "C"}
})
```

### Manual Control
```lua
spoon.Caffeine:start()   -- Activate
spoon.Caffeine:stop()    -- Deactivate
spoon.Caffeine:toggle()  -- Toggle state
```
