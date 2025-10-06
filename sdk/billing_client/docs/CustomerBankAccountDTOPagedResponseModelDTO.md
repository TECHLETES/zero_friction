# CustomerBankAccountDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CustomerBankAccountDTO]**](CustomerBankAccountDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.customer_bank_account_dto_paged_response_model_dto import CustomerBankAccountDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBankAccountDTOPagedResponseModelDTO from a JSON string
customer_bank_account_dto_paged_response_model_dto_instance = CustomerBankAccountDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBankAccountDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
customer_bank_account_dto_paged_response_model_dto_dict = customer_bank_account_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CustomerBankAccountDTOPagedResponseModelDTO from a dict
customer_bank_account_dto_paged_response_model_dto_from_dict = CustomerBankAccountDTOPagedResponseModelDTO.from_dict(customer_bank_account_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


