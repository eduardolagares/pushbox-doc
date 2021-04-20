module Pushbox::Provider::Delivery
    # A base class of any Provider::Delivery
    # This class defines what a delivery has to do to work.
    class Base
        # Sends the notification
        # This method has be capable to identify if this notification is to a Topic or a Device
        # @param notification [Notification] The notification tha will be sent
        # @abstract
        def send(notification)
            raise NotImplementedError.new
        end

        # Creates a topic on provider. It is Used only when the provider accept synced topics
        # @abstract
        def create_topic
            raise NotImplementedError.new
        end

        # Delete a topic on provider. It is Used only when the provider accept synced topics
        # @abstract
        def delete_topic
            raise NotImplementedError.new
        end

        # Subscribe a device to a topic. It is Used only when the provider accept synced topics
        # @abstract
        def subscribe_to_topic(topic, device)
            raise NotImplementedError.new
        end

        # Unsubscribe a device to a topic. It is Used only when the provider accept synced topics
        # @abstract
        def unsubscrive_from_the_topic(topic, device)
            raise NotImplementedError.new
        end
    end
end