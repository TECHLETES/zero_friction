# ContractStatusHistoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_status** | [**ContractStatus**](ContractStatus.md) |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.contract_status_history_dto import ContractStatusHistoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractStatusHistoryDTO from a JSON string
contract_status_history_dto_instance = ContractStatusHistoryDTO.from_json(json)
# print the JSON string representation of the object
print(ContractStatusHistoryDTO.to_json())

# convert the object into a dict
contract_status_history_dto_dict = contract_status_history_dto_instance.to_dict()
# create an instance of ContractStatusHistoryDTO from a dict
contract_status_history_dto_from_dict = ContractStatusHistoryDTO.from_dict(contract_status_history_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


