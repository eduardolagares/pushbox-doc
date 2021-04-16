
# A Provider is a bridge between a Device the service.
#
# @attr name [String] The name of provider. Ex. email, smtp, etc.
# @attr config [JSON] Variables that the provider needs to work.
# @attr type [Enum] The type of a provider.
# @attr class_name [String] The name of the class that this provider use to send notifications
# @attr synced_topics [Boolean] Define that this providers can or not sync topics.

class Pushbox::Provider
    enum type: [:expo, :email]

    # Returns the class that this provider use to delivery notifications. Each class returned should extends Provider::Delivery::Base
    # @return [Provider::Delivery::Base]
    def delivery_class
        "Provider::Delivery::#{type.to_s.camelize}"
    end
end
