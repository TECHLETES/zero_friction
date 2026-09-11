# CommunicationProductUsageIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integration_type** | **str** |  | [optional] 
**active** | **bool** |  | [optional] 

## Example

```python
from communication_client.models.communication_product_usage_integration_dto import CommunicationProductUsageIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationProductUsageIntegrationDTO from a JSON string
communication_product_usage_integration_dto_instance = CommunicationProductUsageIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationProductUsageIntegrationDTO.to_json())

# convert the object into a dict
communication_product_usage_integration_dto_dict = communication_product_usage_integration_dto_instance.to_dict()
# create an instance of CommunicationProductUsageIntegrationDTO from a dict
communication_product_usage_integration_dto_from_dict = CommunicationProductUsageIntegrationDTO.from_dict(communication_product_usage_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


