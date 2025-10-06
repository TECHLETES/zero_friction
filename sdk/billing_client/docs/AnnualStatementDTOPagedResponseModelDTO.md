# AnnualStatementDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[AnnualStatementDTO]**](AnnualStatementDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.annual_statement_dto_paged_response_model_dto import AnnualStatementDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualStatementDTOPagedResponseModelDTO from a JSON string
annual_statement_dto_paged_response_model_dto_instance = AnnualStatementDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(AnnualStatementDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
annual_statement_dto_paged_response_model_dto_dict = annual_statement_dto_paged_response_model_dto_instance.to_dict()
# create an instance of AnnualStatementDTOPagedResponseModelDTO from a dict
annual_statement_dto_paged_response_model_dto_from_dict = AnnualStatementDTOPagedResponseModelDTO.from_dict(annual_statement_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


