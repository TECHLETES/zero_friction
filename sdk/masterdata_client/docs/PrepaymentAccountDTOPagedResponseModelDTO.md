# PrepaymentAccountDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[PrepaymentAccountDTO]**](PrepaymentAccountDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.prepayment_account_dto_paged_response_model_dto import PrepaymentAccountDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentAccountDTOPagedResponseModelDTO from a JSON string
prepayment_account_dto_paged_response_model_dto_instance = PrepaymentAccountDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentAccountDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
prepayment_account_dto_paged_response_model_dto_dict = prepayment_account_dto_paged_response_model_dto_instance.to_dict()
# create an instance of PrepaymentAccountDTOPagedResponseModelDTO from a dict
prepayment_account_dto_paged_response_model_dto_from_dict = PrepaymentAccountDTOPagedResponseModelDTO.from_dict(prepayment_account_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


