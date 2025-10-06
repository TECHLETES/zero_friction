# ContractOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**draft** | **int** |  | [optional] 
**ongoing** | **int** |  | [optional] 
**blocked** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.contract_overview_count_dto import ContractOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractOverviewCountDTO from a JSON string
contract_overview_count_dto_instance = ContractOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(ContractOverviewCountDTO.to_json())

# convert the object into a dict
contract_overview_count_dto_dict = contract_overview_count_dto_instance.to_dict()
# create an instance of ContractOverviewCountDTO from a dict
contract_overview_count_dto_from_dict = ContractOverviewCountDTO.from_dict(contract_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


