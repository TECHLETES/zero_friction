# ConsumptionOriginShareDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**origin** | [**ConsumptionOrigin**](ConsumptionOrigin.md) |  | [optional]
**percentage** | **float** |  | [optional]

## Example

```python
from billing_client.models.consumption_origin_share_dto import ConsumptionOriginShareDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionOriginShareDTO from a JSON string
consumption_origin_share_dto_instance = ConsumptionOriginShareDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionOriginShareDTO.to_json())

# convert the object into a dict
consumption_origin_share_dto_dict = consumption_origin_share_dto_instance.to_dict()
# create an instance of ConsumptionOriginShareDTO from a dict
consumption_origin_share_dto_from_dict = ConsumptionOriginShareDTO.from_dict(consumption_origin_share_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
