# Layouts
# https://middlemanapp.com/basics/layouts/
activate :external_pipeline,
  name: :webpack,
  command: build? ?
    "./node_modules/webpack/bin/webpack.js --bail" :
    "./node_modules/webpack/bin/webpack.js --watch --progress --color -d false",
  source: ".tmp/dist",
  latency: 1

activate :meta_tags

configure :development do
  config[:css_dir] = ".tmp/dist"
  config[:js_dir] = ".tmp/dist"
end

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
    def gallery_file_name(id, file_name)
       "#{file_name}#{format_id(id)}"
    end

    def format_id(id)
        if id < 10
            "00#{id}"
        elsif id < 100
            "0#{id}"
        else
            id
        end
    end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end
