# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

require "date"
require "time"

module Algolia
  module Ingestion
    # API request body for creating a task using the V1 shape, please use methods and types that don't contain the V1 suffix.
    class TaskCreateV1
      # Universally uniqud identifier (UUID) of a source.
      attr_accessor :source_id

      # Universally unique identifier (UUID) of a destination resource.
      attr_accessor :destination_id

      attr_accessor :trigger

      attr_accessor :action

      # Whether the task is enabled.
      attr_accessor :enabled

      # Maximum accepted percentage of failures for a task run to finish successfully.
      attr_accessor :failure_threshold

      attr_accessor :input

      # Date of the last cursor in RFC 3339 format.
      attr_accessor :cursor

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :source_id => :sourceID,
          :destination_id => :destinationID,
          :trigger => :trigger,
          :action => :action,
          :enabled => :enabled,
          :failure_threshold => :failureThreshold,
          :input => :input,
          :cursor => :cursor
        }
      end

      # Returns all the JSON keys this model knows about
      def self.acceptable_attributes
        attribute_map.values
      end

      # Attribute type mapping.
      def self.types_mapping
        {
          :source_id => :"String",
          :destination_id => :"String",
          :trigger => :"TaskCreateTrigger",
          :action => :"ActionType",
          :enabled => :"Boolean",
          :failure_threshold => :"Integer",
          :input => :"TaskInput",
          :cursor => :"String"
        }
      end

      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new(
          []
        )
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          raise(
            ArgumentError,
            "The input argument (attributes) must be a hash in `Algolia::TaskCreateV1` initialize method"
          )
        end

        # check to see if the attribute exists and convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!self.class.attribute_map.key?(k.to_sym))
            raise(
              ArgumentError,
              "`#{k}` is not a valid attribute in `Algolia::TaskCreateV1`. Please check the name to make sure it's valid. List of attributes: " +
                self.class.attribute_map.keys.inspect
            )
          end

          h[k.to_sym] = v
        }

        if attributes.key?(:source_id)
          self.source_id = attributes[:source_id]
        else
          self.source_id = nil
        end

        if attributes.key?(:destination_id)
          self.destination_id = attributes[:destination_id]
        else
          self.destination_id = nil
        end

        if attributes.key?(:trigger)
          self.trigger = attributes[:trigger]
        else
          self.trigger = nil
        end

        if attributes.key?(:action)
          self.action = attributes[:action]
        else
          self.action = nil
        end

        if attributes.key?(:enabled)
          self.enabled = attributes[:enabled]
        end

        if attributes.key?(:failure_threshold)
          self.failure_threshold = attributes[:failure_threshold]
        end

        if attributes.key?(:input)
          self.input = attributes[:input]
        end

        if attributes.key?(:cursor)
          self.cursor = attributes[:cursor]
        end
      end

      # Custom attribute writer method with validation
      # @param [Object] failure_threshold Value to be assigned
      def failure_threshold=(failure_threshold)
        if failure_threshold.nil?
          raise ArgumentError, "failure_threshold cannot be nil"
        end

        if failure_threshold > 100
          raise ArgumentError, "invalid value for \"failure_threshold\", must be smaller than or equal to 100."
        end

        if failure_threshold < 0
          raise ArgumentError, "invalid value for \"failure_threshold\", must be greater than or equal to 0."
        end

        @failure_threshold = failure_threshold
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(other)
        return true if self.equal?(other)
        self.class == other.class &&
          source_id == other.source_id &&
          destination_id == other.destination_id &&
          trigger == other.trigger &&
          action == other.action &&
          enabled == other.enabled &&
          failure_threshold == other.failure_threshold &&
          input == other.input &&
          cursor == other.cursor
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(other)
        self == other
      end

      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [source_id, destination_id, trigger, action, enabled, failure_threshold, input, cursor].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        attributes = attributes.transform_keys(&:to_sym)
        transformed_hash = {}
        types_mapping.each_pair do |key, type|
          if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
            transformed_hash[key.to_sym] = nil
          elsif type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[attribute_map[key]].is_a?(Array)
              transformed_hash[key.to_sym] = attributes[attribute_map[key]].map { |v|
                _deserialize(::Regexp.last_match(1), v)
              }
            end
          elsif !attributes[attribute_map[key]].nil?
            transformed_hash[key.to_sym] = _deserialize(type, attributes[attribute_map[key]])
          end
        end

        new(transformed_hash)
      end

      # Deserializes the data based on type
      # @param string type Data type
      # @param string value Value to be deserialized
      # @return [Object] Deserialized data
      def self._deserialize(type, value)
        case type.to_sym
        when :Time
          Time.parse(value)
        when :Date
          Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :Boolean
          if value.to_s =~ /\A(true|t|yes|y|1)\z/i
            true
          else
            false
          end

        when :Object
          # generic object (usually a Hash), return directly
          value
        when /\AArray<(?<inner_type>.+)>\z/
          inner_type = Regexp.last_match[:inner_type]
          value.map { |v| _deserialize(inner_type, v) }
        when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
          k_type = Regexp.last_match[:k_type]
          v_type = Regexp.last_match[:v_type]
          {}.tap do |hash|
            value.each do |k, v|
              hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
            end
          end
          # model
        else
          # models (e.g. Pet) or oneOf
          klass = Algolia::Ingestion.const_get(type)
          klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass
            .build_from_hash(value)
        end
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        to_hash.to_s
      end

      # to_body is an alias to to_hash (backward compatibility)
      # @return [Hash] Returns the object in the form of hash
      def to_body
        to_hash
      end

      def to_json(*_args)
        to_hash.to_json
      end

      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end

          hash[param] = _to_hash(value)
        end

        hash
      end

      # Outputs non-array value in the form of hash
      # For object, use to_hash. Otherwise, just return the value
      # @param [Object] value Any valid value
      # @return [Hash] Returns the value in the form of hash
      def _to_hash(value)
        if value.is_a?(Array)
          value.compact.map { |v| _to_hash(v) }
        elsif value.is_a?(Hash)
          {}.tap do |hash|
            value.each { |k, v| hash[k] = _to_hash(v) }
          end
        elsif value.respond_to?(:to_hash)
          value.to_hash
        else
          value
        end
      end

    end

  end
end
