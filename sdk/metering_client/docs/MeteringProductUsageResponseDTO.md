# MeteringProductUsageResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_integrations** | [**List[MeteringProductUsageOrgIntegrationDTO]**](MeteringProductUsageOrgIntegrationDTO.md) |  | [optional]

## Example

```python
from metering_client.models.metering_product_usage_response_dto import MeteringProductUsageResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringProductUsageResponseDTO from a JSON string
metering_product_usage_response_dto_instance = MeteringProductUsageResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringProductUsageResponseDTO.to_json())

# convert the object into a dict
metering_product_usage_response_dto_dict = metering_product_usage_response_dto_instance.to_dict()
# create an instance of MeteringProductUsageResponseDTO from a dict
metering_product_usage_response_dto_from_dict = MeteringProductUsageResponseDTO.from_dict(metering_product_usage_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
