# MeteringProductUsageIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integration_type** | **str** |  | [optional]
**active** | **bool** |  | [optional]

## Example

```python
from metering_client.models.metering_product_usage_integration_dto import MeteringProductUsageIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProductUsageIntegrationDTO from a JSON string
metering_product_usage_integration_dto_instance = MeteringProductUsageIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProductUsageIntegrationDTO.to_json())

# convert the object into a dict
metering_product_usage_integration_dto_dict = metering_product_usage_integration_dto_instance.to_dict()
# create an instance of MeteringProductUsageIntegrationDTO from a dict
metering_product_usage_integration_dto_from_dict = MeteringProductUsageIntegrationDTO.from_dict(metering_product_usage_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
