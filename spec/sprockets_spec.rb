require 'spec_helper'

describe "Sprockets" do
  it "should register .hamlbars extension" do
    expect(Sprockets.engines['.hamlbars']).to eq Hamlbars::Template
  end
end
