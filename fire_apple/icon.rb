module FireApple
  image = javax.imageio.ImageIO.read(java.io.File.new('images/icon.png'))
  ICON = java.awt.TrayIcon.new(image, 'Fire Apple')
end