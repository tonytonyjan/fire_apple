module FireApple
  module MenuItems
    NEW_PROJECT = java.awt.MenuItem.new 'New Project'
    file_chooser = javax.swing.JFileChooser.new
    NEW_PROJECT.add_action_listener do |event|
      if file_chooser.showSaveDialog(nil) == javax.swing.JFileChooser::APPROVE_OPTION
         project_path = file_chooser.selected_file.path
         ::FireApple.middleman 'init', project_path, '--skip-gemfile'
         ::Launchy.open project_path
      end
    end
  end
end