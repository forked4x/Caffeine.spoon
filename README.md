# Caffeine.spoon

Prevents display sleep and keeps Microsoft Teams status as "Available".

## Install
#### With [Lazy.spoon](https://github.com/forked4x/Lazy.spoon):
```lua
spoon.Lazy:setup({
  {
    "forked4x/Caffeine.spoon",
    config = function()
      spoon.Caffeine:bindHotkeys({
        toggle = {{"cmd", "alt", "ctrl"}, "C"}
      })
    end,
  }
})
```

#### Manually:
```bash
mkdir -p ~/.hammerspoon/Spoons
git clone https://github.com/forkd4x/Caffeine.spoon.git ~/.hammerspoon/Spoons/Caffeine.spoon
```
```lua
-- hammerspoon/init.lua
hs.loadSpoon("Caffeine")

spoon.Caffeine:bindHotkeys({
  toggle = {{"cmd", "alt", "ctrl"}, "C"}
})
```

## Manual Control
```lua
spoon.Caffeine:start()   -- Activate
spoon.Caffeine:stop()    -- Deactivate
spoon.Caffeine:toggle()  -- Toggle state
```
