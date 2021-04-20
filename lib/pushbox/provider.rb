
# A Provider is a bridge between a Device the service.
#
# @attr name [String] The name of provider. Ex. email, smtp, etc.
# @attr config [JSON] Variables that the provider needs to work.
# @attr delivery_class_name [String] The name of the class that this provider use to send notifications
# @attr synced_topics [Boolean] Define that this providers can or not sync topics.
# @attr alias [String] The alias of provider. UNIQUE
class Pushbox::Provider

    # Returns the class that this provider use to delivery notifications. Each class returned should extends Provider::Delivery::Base
    # @return [Provider::Delivery::Base]
    def delivery_class
        "Provider::Delivery::#{type.to_s.camelize}"
    end
end
