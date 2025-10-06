# CustAgingHeaderDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CustAgingHeaderDTO]**](CustAgingHeaderDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.cust_aging_header_dto_paged_response_model_dto import CustAgingHeaderDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustAgingHeaderDTOPagedResponseModelDTO from a JSON string
cust_aging_header_dto_paged_response_model_dto_instance = CustAgingHeaderDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CustAgingHeaderDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
cust_aging_header_dto_paged_response_model_dto_dict = cust_aging_header_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CustAgingHeaderDTOPagedResponseModelDTO from a dict
cust_aging_header_dto_paged_response_model_dto_from_dict = CustAgingHeaderDTOPagedResponseModelDTO.from_dict(cust_aging_header_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


