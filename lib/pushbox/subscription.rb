
# A Subscription is the register of a device in a topic.
# @attr device [Device]
# @attr topic [Topic]
# @attr status [Enumerable<Symbol>] The status of subscription. It is used when the device has a provider that sync topics. 
#   These status are:
#   @return [:synced, :synchronizing]
class Pushbox::Subscription

end
