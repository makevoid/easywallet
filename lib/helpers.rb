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

# helpers



# view helpers

def span(label)
  haml_tag(:span){ |s| haml_concat label }
end


# notes
#
# you can require_relative to speed things up a tiny for faster haml compilation
#
# require_relative "lib/helpers.rb"