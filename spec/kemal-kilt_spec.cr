require "./spec_helper"

describe "kemal-kilt" do
  it "renders" do
    get "/World"

    response.body.should eq "<h1>\n  Hello World!\n</h1>"
  end
end
