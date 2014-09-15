
set :markdown_engine, :kramdown
set :trailing_slash, true
activate :i18n, :mount_at_root => :en

# Slim configuration
set :slim, {
  :format  => :html5,
  :indent => '    ',
  :pretty => true,
  :sort_attrs => false
}
::Slim::Engine.set_default_options lang: I18n.locale, locals: {}

# Use LiveReload
activate :livereload

# Compass configuration
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :files_dir, 'assets/files'

# Build-specific configuration
configure :build do
  ignore 'images/*.psd'
  ignore 'stylesheets/lib/*'
  ignore 'stylesheets/vendor/*'
  ignore 'javascripts/lib/*'
  ignore 'javascripts/vendor/*'

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end


activate :blog do |blog|
  blog.name = "classes"
  blog.sources = "/classes/{course}/{term}/{year}-{month}-{day}.html"
  blog.permalink = "/classes/{course}/{term}/{year}-{month}-{day}"
  blog.layout = "class_day"
  # blog.summary_separator = /SPLIT_SUMMARY_BEFORE_THIS/
  # blog.custom_collections = {
  #   term: {
  #     link: '/classes/{term}.html',
  #     # template: 'layouts/term.html'
  #   }
  # }
end

activate :blog do |blog|
  blog.name = "lessons"
  blog.sources = "/lessons/{topic}/{title}.html"
  blog.permalink = "/lessons/{topic}/{title}"
  blog.summary_separator = /SPLIT_SUMMARY_BEFORE_THIS/
  blog.layout = "lesson"
end


# activate :blog do |blog|
#   blog.name = "updates"
#   blog.prefix = "updates"
#   blog.sources = "updates/{year}/{month}-{day}.html"
#   blog.summary_separator = /SPLIT_SUMMARY_BEFORE_THIS/
# end

activate :directory_indexes


ready do
  # Add bower's directory to sprockets asset path
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end



###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
