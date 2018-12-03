module Hamlbars
  module Ext
    autoload :AttributeBuilder, File.expand_path('../ext/attribute_builder.rb', __FILE__)
    autoload :RailsHelper, File.expand_path('../ext/rails_helper.rb', __FILE__)
  end
end
