# CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**amount_excl_vat** | **float** |  | 
**tax_code_id** | **str** |  | 

## Example

```python
from configuration_client.models.collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto import CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO from a JSON string
collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto_instance = CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO.to_json())

# convert the object into a dict
collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto_dict = collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto_instance.to_dict()
# create an instance of CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO from a dict
collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto_from_dict = CollectionChargeParametersDTOFixedCollectionChargeParametersRequestDTO.from_dict(collection_charge_parameters_dto_fixed_collection_charge_parameters_request_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


