require 'java'
java.lang.System.setProperty "apple.awt.UIElement", "true"

module FireApple
  extend self
  def middleman *argv
    Middleman.setup_load_paths
    Dir.chdir ENV['MM_ROOT'] if ENV['MM_ROOT']
    Middleman::Cli::Base.start argv
  end
end

require 'fire_apple/main'