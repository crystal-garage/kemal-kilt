require "kemal"

require "kilt"
require "kilt/slang"

get "/" do
  name = "World"

  render "spec/support/views/index.slang"
end

Kemal.run
