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

      end

      def default_attributes

      end

      def attribute_type(attribute)

      end

      def associations

      end
    end
  end
end