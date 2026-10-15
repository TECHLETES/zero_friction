# CommunicationParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**sender_email** | [**EmailAddress**](EmailAddress.md) |  | [optional] 
**reply_to** | [**EmailAddress**](EmailAddress.md) |  | [optional] 
**is_sandboxed** | **bool** |  | [optional] 
**sandbox_recipient_email** | **str** |  | [optional] 
**sandbox_recipient_phone_number** | **str** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.communication_parameters_dto import CommunicationParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationParametersDTO from a JSON string
communication_parameters_dto_instance = CommunicationParametersDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationParametersDTO.to_json())

# convert the object into a dict
communication_parameters_dto_dict = communication_parameters_dto_instance.to_dict()
# create an instance of CommunicationParametersDTO from a dict
communication_parameters_dto_from_dict = CommunicationParametersDTO.from_dict(communication_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


