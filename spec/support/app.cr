require "kemal"
require "kilt/slang"

get "/:name" do |env|
  name = env.params.url["name"]

  render "spec/support/views/index.slang"
end

Kemal.run
