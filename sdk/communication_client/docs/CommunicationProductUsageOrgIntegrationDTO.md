# CommunicationProductUsageOrgIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **str** |  | [optional] 
**organization_code** | **str** |  | [optional] 
**organization_name** | **str** |  | [optional] 
**integrations** | [**List[CommunicationProductUsageIntegrationDTO]**](CommunicationProductUsageIntegrationDTO.md) |  | [optional] 

## Example

```python
from communication_client.models.communication_product_usage_org_integration_dto import CommunicationProductUsageOrgIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationProductUsageOrgIntegrationDTO from a JSON string
communication_product_usage_org_integration_dto_instance = CommunicationProductUsageOrgIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationProductUsageOrgIntegrationDTO.to_json())

# convert the object into a dict
communication_product_usage_org_integration_dto_dict = communication_product_usage_org_integration_dto_instance.to_dict()
# create an instance of CommunicationProductUsageOrgIntegrationDTO from a dict
communication_product_usage_org_integration_dto_from_dict = CommunicationProductUsageOrgIntegrationDTO.from_dict(communication_product_usage_org_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


