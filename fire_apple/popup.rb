require 'fire_apple/menu_items/new_project'
require 'fire_apple/menu_items/watch'
require 'fire_apple/menu_items/about'
module FireApple
  include MenuItems
  POPUP = java.awt.PopupMenu.new
  POPUP.add(NEW_PROJECT)
  POPUP.add(WATCH)
  POPUP.add(ABOUT)
end