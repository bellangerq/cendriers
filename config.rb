activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

helpers do
  def markdown(content)
     Tilt['markdown'].new { content }.render
   end
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
