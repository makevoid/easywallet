guard :haml, input: 'haml', output: 'public'
guard :sass, input: 'sass', output: 'public/css' do
  watch %r{sass/.+.sass}
end
guard :coffeescript, input: 'coffee', output: "public/js", bare: true
guard :livereload do
  watch %r{.+.(haml|md|markdown|textile)}
  watch %r{css/.+.css}
  watch %r{js/.+.js}
end


=begin

# Guard-Static-App
# Guard based static application with haml, sass, coffeescript and livereload

# step 0 - launch guard

    bundle
    guard

# step 1 - start a server

    python -m SimpleHTTPServer 3000

# step 2 - visit the host

    http://localhost:3000


---

mkdir -p coffe haml lib public sass public/css public/js


touch Gemfile
---
source 'http://rubygems.org'

group :development do
  #gem "guard-concat"

  gem "guard-haml"#, github: "makevoid/guard-haml"
  gem "guard-sass"
  gem "guard-coffeescript"
  gem "guard-livereload"
end

touch sass/main.sass
--
@import "base.sass"

// layout

// colors

// sections


touch coffee/app.coffee
---
console.log "active!"


touch sass/base.sass
--
// standard reset

html, body
  font-family: sans-serif, Arial, Verdana
  text-align: center

a
  text-decoration: none

// quick structural style

*
  padding: 3% // 20px
  background: #EEE
  border: 1px solid #999
  max-width: 1000px
  text-align: center
  box-sizing: border-box

html, body
  max-width: 5000px

p
  padding: 3% 0%

div
  display: block

a
  display: inline-block


// forms

input
  display: block

input[type=text], input[type=password]
  width: 100%


// utils

.hidden
  display: none

// helpers

.left
  text-align: left

.right
  text-align: right

// layout

.container
  margin: 0 auto
  width: 100%




touch lib/helpers.rb
---
# layout methods

def haml(name)
  template = File.read "haml/#{name}.haml"
  haml_engine = Haml::Engine.new template
  output = haml_engine.render
  output
end

class Hash
  def to_binding(object = Object.new)
    object.instance_eval("def binding_for(#{keys.join(",")}) binding end")
    block = block_given? ? Proc.new : nil
    object.binding_for(*values, &block)
  end
end


def layout(&block)
  locals = {}
  template = File.read "haml/layout.haml"
  haml_engine = Haml::Engine.new template
  values = { yielding: capture_haml(&block) }.to_binding
  page = haml_engine.render values
  haml_concat page
end

=end