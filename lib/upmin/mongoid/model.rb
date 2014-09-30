module Upmin::Mongoid
  module Model
    extend ActiveSupport::Concern

    #retuns a boolean
    def new_record?
      return model.new_record?
    end

    # returns model's Mongoid ObjectID wrapped in an Array
    # note this will look like a string but is not
    def to_key
      return model.to_key
    end

    module ClassMethods
      # NOTE - ANY method added here must be added to the bottom of
      # Upmin::Model. This ensures that an instance of the class was
      # created, which in turn ensures that the correct module was
      # included in the class.

      def find(*args)
        return model_class.find(*args)
      end

      def default_attributes
        return model_class.attribute_names.map(&:to_sym)
      end

      # returns a symbol of the attributes expected type / class
      # see http://mongoid.org/en/mongoid/v3/documents.html#fields
      def attribute_type(attribute)
        return  model_class.fields[attribute.to_s].try(:type).try(:name).try(:downcase).try(:to_sym) || :unknown
      end

      def associations

      end
    end
  end
end