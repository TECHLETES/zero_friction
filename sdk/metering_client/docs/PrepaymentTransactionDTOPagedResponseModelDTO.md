# PrepaymentTransactionDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[PrepaymentTransactionDTO]**](PrepaymentTransactionDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.prepayment_transaction_dto_paged_response_model_dto import PrepaymentTransactionDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentTransactionDTOPagedResponseModelDTO from a JSON string
prepayment_transaction_dto_paged_response_model_dto_instance = PrepaymentTransactionDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentTransactionDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
prepayment_transaction_dto_paged_response_model_dto_dict = prepayment_transaction_dto_paged_response_model_dto_instance.to_dict()
# create an instance of PrepaymentTransactionDTOPagedResponseModelDTO from a dict
prepayment_transaction_dto_paged_response_model_dto_from_dict = PrepaymentTransactionDTOPagedResponseModelDTO.from_dict(prepayment_transaction_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


