# TieredSliceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **float** |  | [optional] 
**formula_based** | **bool** |  | [optional] 
**input_parameters** | [**List[BillingTariffInputDTO]**](BillingTariffInputDTO.md) |  | [optional] 
**unit_tariff** | **float** |  | [optional] 
**expression** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.tiered_slice_dto import TieredSliceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TieredSliceDTO from a JSON string
tiered_slice_dto_instance = TieredSliceDTO.from_json(json)
# print the JSON string representation of the object
print(TieredSliceDTO.to_json())

# convert the object into a dict
tiered_slice_dto_dict = tiered_slice_dto_instance.to_dict()
# create an instance of TieredSliceDTO from a dict
tiered_slice_dto_from_dict = TieredSliceDTO.from_dict(tiered_slice_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


