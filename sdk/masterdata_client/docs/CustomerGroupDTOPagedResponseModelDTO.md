# CustomerGroupDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CustomerGroupDTO]**](CustomerGroupDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.customer_group_dto_paged_response_model_dto import CustomerGroupDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerGroupDTOPagedResponseModelDTO from a JSON string
customer_group_dto_paged_response_model_dto_instance = CustomerGroupDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerGroupDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
customer_group_dto_paged_response_model_dto_dict = customer_group_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CustomerGroupDTOPagedResponseModelDTO from a dict
customer_group_dto_paged_response_model_dto_from_dict = CustomerGroupDTOPagedResponseModelDTO.from_dict(customer_group_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


