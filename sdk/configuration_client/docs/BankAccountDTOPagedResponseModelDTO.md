# BankAccountDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[BankAccountDTO]**](BankAccountDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.bank_account_dto_paged_response_model_dto import BankAccountDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountDTOPagedResponseModelDTO from a JSON string
bank_account_dto_paged_response_model_dto_instance = BankAccountDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(BankAccountDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
bank_account_dto_paged_response_model_dto_dict = bank_account_dto_paged_response_model_dto_instance.to_dict()
# create an instance of BankAccountDTOPagedResponseModelDTO from a dict
bank_account_dto_paged_response_model_dto_from_dict = BankAccountDTOPagedResponseModelDTO.from_dict(bank_account_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


