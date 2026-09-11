# CommunicationProductUsageResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_integrations** | [**List[CommunicationProductUsageOrgIntegrationDTO]**](CommunicationProductUsageOrgIntegrationDTO.md) |  | [optional]

## Example

```python
from communication_client.models.communication_product_usage_response_dto import CommunicationProductUsageResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationProductUsageResponseDTO from a JSON string
communication_product_usage_response_dto_instance = CommunicationProductUsageResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationProductUsageResponseDTO.to_json())

# convert the object into a dict
communication_product_usage_response_dto_dict = communication_product_usage_response_dto_instance.to_dict()
# create an instance of CommunicationProductUsageResponseDTO from a dict
communication_product_usage_response_dto_from_dict = CommunicationProductUsageResponseDTO.from_dict(communication_product_usage_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
