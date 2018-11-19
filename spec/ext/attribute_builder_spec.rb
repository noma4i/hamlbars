require 'spec_helper'

describe Haml::AttributeBuilder do

  it "should include Hamlbars::AttributeBuilderExtension" do
    expect(Haml::AttributeBuilder.ancestors).to include(Hamlbars::Ext::AttributeBuilder)
  end

  it "should define ::build_attributes_with_handlebars_attributes" do
    expect(Haml::AttributeBuilder.respond_to?(:build_attributes_with_handlebars_attributes)).to be_truthy
  end

  it "should define ::build_attributes_without_handlebars_attributes" do
    expect(Haml::AttributeBuilder.respond_to?(:build_attributes_without_handlebars_attributes)).to be_truthy
  end

  it "should alias ::build_attributes to ::build_attributes_with_handlebars_attributes" do
    expect(Haml::AttributeBuilder.method(:build_attributes)).to eq(Haml::AttributeBuilder.method(:build_attributes_with_handlebars_attributes))
  end

end
