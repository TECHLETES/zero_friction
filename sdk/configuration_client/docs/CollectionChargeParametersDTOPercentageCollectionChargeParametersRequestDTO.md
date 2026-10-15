# CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**percentage** | **float** |  | 
**tax_code_id** | **str** |  | 

## Example

```python
from configuration_client.models.collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto import CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO from a JSON string
collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto_instance = CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO.to_json())

# convert the object into a dict
collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto_dict = collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto_instance.to_dict()
# create an instance of CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO from a dict
collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto_from_dict = CollectionChargeParametersDTOPercentageCollectionChargeParametersRequestDTO.from_dict(collection_charge_parameters_dto_percentage_collection_charge_parameters_request_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


