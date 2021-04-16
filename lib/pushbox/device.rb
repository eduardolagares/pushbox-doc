##
# Device model represents a endpoint that you can send a notification
# @attr provider [Provider] Set what provider this device will use to receive notifications
# @attr system [System] The system that this device belongs.
# @attr provider_identifier [String] The identifier that the provider retuned.
#   It is unique for provider.
# @attr external_identifier [String] Used to link a device with your system identificator like id, uid, etc.
# @attr extra_data [JSON] This data can be used to filder devices.
# @attr tags [Array<String>] This tags can be used to filter devices.
class Pushbox::Device

end
