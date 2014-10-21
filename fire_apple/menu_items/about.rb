module FireApple
  module MenuItems
    ABOUT = java.awt.MenuItem.new 'About'
    ABOUT.add_action_listener do |event|
      javax.swing.JOptionPane.showMessageDialog nil, 'Fire Apple'
    end
  end
end