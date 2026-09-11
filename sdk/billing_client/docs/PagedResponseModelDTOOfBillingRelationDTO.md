# PagedResponseModelDTOOfBillingRelationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[BillingRelationDTO]**](BillingRelationDTO.md) |  | [optional]
**has_next_page** | **bool** |  | [optional]
**next_page_token** | **str** |  | [optional]
**total_records** | **int** |  | [optional]
**sortable_fields** | **List[str]** |  | [optional]
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional]

## Example

```python
from billing_client.models.paged_response_model_dtoof_billing_relation_dto import PagedResponseModelDTOOfBillingRelationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfBillingRelationDTO from a JSON string
paged_response_model_dtoof_billing_relation_dto_instance = PagedResponseModelDTOOfBillingRelationDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfBillingRelationDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_billing_relation_dto_dict = paged_response_model_dtoof_billing_relation_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfBillingRelationDTO from a dict
paged_response_model_dtoof_billing_relation_dto_from_dict = PagedResponseModelDTOOfBillingRelationDTO.from_dict(paged_response_model_dtoof_billing_relation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
