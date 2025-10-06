# MoveRequestContractDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**contract_supply_start_date** | **datetime** |  | [optional] 
**contract_supply_end_date** | **datetime** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**customer_display_name** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_contract_details_dto import MoveRequestContractDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestContractDetailsDTO from a JSON string
move_request_contract_details_dto_instance = MoveRequestContractDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(MoveRequestContractDetailsDTO.to_json())

# convert the object into a dict
move_request_contract_details_dto_dict = move_request_contract_details_dto_instance.to_dict()
# create an instance of MoveRequestContractDetailsDTO from a dict
move_request_contract_details_dto_from_dict = MoveRequestContractDetailsDTO.from_dict(move_request_contract_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


