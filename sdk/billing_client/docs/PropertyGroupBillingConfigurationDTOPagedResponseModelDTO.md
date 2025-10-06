# PropertyGroupBillingConfigurationDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[PropertyGroupBillingConfigurationDTO]**](PropertyGroupBillingConfigurationDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.property_group_billing_configuration_dto_paged_response_model_dto import PropertyGroupBillingConfigurationDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingConfigurationDTOPagedResponseModelDTO from a JSON string
property_group_billing_configuration_dto_paged_response_model_dto_instance = PropertyGroupBillingConfigurationDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingConfigurationDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
property_group_billing_configuration_dto_paged_response_model_dto_dict = property_group_billing_configuration_dto_paged_response_model_dto_instance.to_dict()
# create an instance of PropertyGroupBillingConfigurationDTOPagedResponseModelDTO from a dict
property_group_billing_configuration_dto_paged_response_model_dto_from_dict = PropertyGroupBillingConfigurationDTOPagedResponseModelDTO.from_dict(property_group_billing_configuration_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


