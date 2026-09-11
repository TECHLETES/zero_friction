# CommunicationProviderAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | [**CommunicationProviderType**](CommunicationProviderType.md) |  | [optional] 
**status** | [**CommunicationProviderAccountStatus**](CommunicationProviderAccountStatus.md) |  | [optional] 
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
from communication_client.models.communication_provider_account_dto import CommunicationProviderAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationProviderAccountDTO from a JSON string
communication_provider_account_dto_instance = CommunicationProviderAccountDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationProviderAccountDTO.to_json())

# convert the object into a dict
communication_provider_account_dto_dict = communication_provider_account_dto_instance.to_dict()
# create an instance of CommunicationProviderAccountDTO from a dict
communication_provider_account_dto_from_dict = CommunicationProviderAccountDTO.from_dict(communication_provider_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


