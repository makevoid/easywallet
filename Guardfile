guard :sass, input: 'sass', output: '.'
guard :coffeescript, input: 'coffee', output: "js", bare: true
guard :livereload do
  watch %r{.+.(haml|md|markdown|textile)}
  watch %r{css/.+.css}
  watch %r{js/.+.js}
end
