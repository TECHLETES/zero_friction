# ContractBulkRemoveServiceContextDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_matching_contracts** | **int** |  | [optional] 
**contracts_that_would_lose_service** | **int** |  | [optional] 
**total_service_locations_on_matching_contracts** | **int** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contract_bulk_remove_service_context_dto import ContractBulkRemoveServiceContextDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractBulkRemoveServiceContextDTO from a JSON string
contract_bulk_remove_service_context_dto_instance = ContractBulkRemoveServiceContextDTO.from_json(json)
# print the JSON string representation of the object
print(ContractBulkRemoveServiceContextDTO.to_json())

# convert the object into a dict
contract_bulk_remove_service_context_dto_dict = contract_bulk_remove_service_context_dto_instance.to_dict()
# create an instance of ContractBulkRemoveServiceContextDTO from a dict
contract_bulk_remove_service_context_dto_from_dict = ContractBulkRemoveServiceContextDTO.from_dict(contract_bulk_remove_service_context_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


