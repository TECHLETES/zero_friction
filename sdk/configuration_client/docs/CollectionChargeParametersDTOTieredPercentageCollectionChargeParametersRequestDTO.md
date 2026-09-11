# CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**tiers** | [**List[TierRequest]**](TierRequest.md) |  |
**tax_code_id** | **str** |  |

## Example

```python
from configuration_client.models.collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto import CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO from a JSON string
collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto_instance = CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO.to_json())

# convert the object into a dict
collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto_dict = collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto_instance.to_dict()
# create an instance of CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO from a dict
collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto_from_dict = CollectionChargeParametersDTOTieredPercentageCollectionChargeParametersRequestDTO.from_dict(collection_charge_parameters_dto_tiered_percentage_collection_charge_parameters_request_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
