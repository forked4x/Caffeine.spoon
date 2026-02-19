local obj = {}
obj.__index = obj

-- Metadata
obj.name = "Caffeine"
obj.version = "0.1"
obj.author = "forked4x <forked4x@icloud.com>"
obj.homepage = "https://github.com/forked4x/Caffeine.spoon"
obj.license = "MIT - https://opensource.org/licenses/MIT"

function obj:init()
  self.menubar = nil
  self.timer = nil
  return self
end

function obj:bindHotkeys(mapping)
  local def = {
    toggle = hs.fnutils.partial(self.toggle, self)
  }
  hs.spoons.bindHotkeysToSpec(def, mapping)
  return self
end

function obj:start()
  hs.caffeinate.set("displayIdle", true)
  ---@type hs.menubar | nil
  self.menubar = self.menubar or hs.menubar.new()
  self.menubar:setTitle("☕")
  self.menubar:setClickCallback(function() self:stop() end)
  if self.timer then
    self.timer:stop()
  end
  self.timer = hs.timer.doEvery(30, function()
    if hs.host.idleTime() > 60 then
      hs.eventtap.keyStroke({}, "F20", 1000)
    end
  end)
end

function obj:stop()
  hs.caffeinate.set("displayIdle", false)
  if self.menubar then
    self.menubar:delete()
    self.menubar = nil
  end
  if self.timer then
    self.timer:stop()
    self.timer = nil
  end
end

function obj:toggle()
  if self.menubar then
    self:stop()
  else
    self:start()
  end
end

return obj
