# MeteringProductUsageOrgIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **str** |  | [optional]
**organization_code** | **str** |  | [optional]
**organization_name** | **str** |  | [optional]
**integrations** | [**List[MeteringProductUsageIntegrationDTO]**](MeteringProductUsageIntegrationDTO.md) |  | [optional]

## Example

```python
from metering_client.models.metering_product_usage_org_integration_dto import MeteringProductUsageOrgIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProductUsageOrgIntegrationDTO from a JSON string
metering_product_usage_org_integration_dto_instance = MeteringProductUsageOrgIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProductUsageOrgIntegrationDTO.to_json())

# convert the object into a dict
metering_product_usage_org_integration_dto_dict = metering_product_usage_org_integration_dto_instance.to_dict()
# create an instance of MeteringProductUsageOrgIntegrationDTO from a dict
metering_product_usage_org_integration_dto_from_dict = MeteringProductUsageOrgIntegrationDTO.from_dict(metering_product_usage_org_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
