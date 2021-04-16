
# A Notification is a message and a group of anothers attributes that will be send.
# A Notification can be send to a Topic, Feed or Device
# A Notification has to belongs to a Provider

# @attr provider [Provider] The provider that will be used to send this notification.
# @attr destiny [Topic, Feed, Device] The destiny of a Notification can be a Topic, Feed or Device.
# @attr title [String]
# @attr Subtitle [String]
# @attr body [String] The text of a notification.
# @attr body_type [String] The type of the body Can be html or text
# @attr data [JSON] Date can be use to send specific variables for custom providers
class Pushbox::Notification
    
    
end
