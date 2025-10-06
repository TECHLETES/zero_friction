# UpdateCommunicationParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**sender_email_address** | **str** |  | [optional] 
**sender_name** | **str** |  | [optional] 
**reply_to_email_address** | **str** |  | [optional] 
**reply_to_name** | **str** |  | [optional] 
**is_sandboxed** | **bool** |  | [optional] 
**sandbox_recipient_email** | **str** |  | [optional] 
**sandbox_recipient_phone_number** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_communication_parameters_request import UpdateCommunicationParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCommunicationParametersRequest from a JSON string
update_communication_parameters_request_instance = UpdateCommunicationParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCommunicationParametersRequest.to_json())

# convert the object into a dict
update_communication_parameters_request_dict = update_communication_parameters_request_instance.to_dict()
# create an instance of UpdateCommunicationParametersRequest from a dict
update_communication_parameters_request_from_dict = UpdateCommunicationParametersRequest.from_dict(update_communication_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


