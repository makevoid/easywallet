guard :haml, input: 'haml', output: 'public'
guard :sass, input: 'sass', output: 'public/css'
guard :coffeescript, input: 'coffee', output: "public/js", bare: true
guard :livereload do
  watch %r{.+.(haml|md|markdown|textile)}
  watch %r{css/.+.css}
  watch %r{js/.+.js}
end
