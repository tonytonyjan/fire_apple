module FireApple
  module MenuItems
    WATCH = java.awt.MenuItem.new 'Watch'
    file_chooser = javax.swing.JFileChooser.new
    file_chooser.file_selection_mode = javax.swing.JFileChooser::DIRECTORIES_ONLY
    WATCH.add_action_listener do |event|
      if file_chooser.showOpenDialog nil == javax.swing.JFileChooser::APPROVE_OPTION
        # TODO
        ::FireApple.middleman 'server'
        # ::Middleman::PreviewServer.stop
        ::Launchy.open 'http://localhost:4567'
      end
    end
  end
end