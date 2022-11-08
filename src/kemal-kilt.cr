require "kemal"
require "kilt"

macro render(filename, layout)
  __content_filename__ = {{filename}}
  content = render {{filename}}
  render {{layout}}
end

macro render(filename)
  Kilt.render({{filename}})
end
