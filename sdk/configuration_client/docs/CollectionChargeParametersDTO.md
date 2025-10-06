# CollectionChargeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_code_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.collection_charge_parameters_dto import CollectionChargeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionChargeParametersDTO from a JSON string
collection_charge_parameters_dto_instance = CollectionChargeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionChargeParametersDTO.to_json())

# convert the object into a dict
collection_charge_parameters_dto_dict = collection_charge_parameters_dto_instance.to_dict()
# create an instance of CollectionChargeParametersDTO from a dict
collection_charge_parameters_dto_from_dict = CollectionChargeParametersDTO.from_dict(collection_charge_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


