SRC = *.rb fire_apple bundle images
fire_app.jar: $(SRC)
	cp jruby-complete-1.7.16.jar fire_app.jar
	jar ufe fire_app.jar org.jruby.JarBootstrapMain $(SRC)
bundle: Gemfile
	bundle install --standalone
clean:
	rm -rf fire_app.jar bundle .bundle