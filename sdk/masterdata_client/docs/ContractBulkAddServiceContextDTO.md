# ContractBulkAddServiceContextDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_matching_contracts** | **int** |  | [optional]
**contracts_that_would_receive_service** | **int** |  | [optional]
**total_service_locations_on_matching_contracts** | **int** |  | [optional]
**service_locations_that_would_receive_service** | **int** |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]

## Example

```python
from masterdata_client.models.contract_bulk_add_service_context_dto import ContractBulkAddServiceContextDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractBulkAddServiceContextDTO from a JSON string
contract_bulk_add_service_context_dto_instance = ContractBulkAddServiceContextDTO.from_json(json)
# print the JSON string representation of the object
print(ContractBulkAddServiceContextDTO.to_json())

# convert the object into a dict
contract_bulk_add_service_context_dto_dict = contract_bulk_add_service_context_dto_instance.to_dict()
# create an instance of ContractBulkAddServiceContextDTO from a dict
contract_bulk_add_service_context_dto_from_dict = ContractBulkAddServiceContextDTO.from_dict(contract_bulk_add_service_context_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
