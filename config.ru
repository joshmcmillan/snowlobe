require File.expand_path(File.dirname(__FILE__) + "/app")

# Let me hear you say CSS!
stylesheets = Sprockets::Environment.new
stylesheets.append_path "assets/css"
map("/css") { run stylesheets }

# Let me hear you say JavaScript!
javascripts = Sprockets::Environment.new
javascripts.append_path "assets/js"
map("/js")  { run javascripts }

# Let me hear you say images!
images      = Sprockets::Environment.new
images.append_path "assets/img"
map("/img") { run images }

# Everything else!
map("/")    { run Sinatra::Application }