require 'fire_apple/icon'
require 'fire_apple/popup'
module FireApple
  TRAY = java.awt.SystemTray.system_tray
  class Main
    def self.start
      ICON.setPopupMenu POPUP
      TRAY.add ICON
    end
  end
end