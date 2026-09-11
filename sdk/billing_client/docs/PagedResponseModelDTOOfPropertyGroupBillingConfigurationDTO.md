# PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO


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
from billing_client.models.paged_response_model_dtoof_property_group_billing_configuration_dto import PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO from a JSON string
paged_response_model_dtoof_property_group_billing_configuration_dto_instance = PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_property_group_billing_configuration_dto_dict = paged_response_model_dtoof_property_group_billing_configuration_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO from a dict
paged_response_model_dtoof_property_group_billing_configuration_dto_from_dict = PagedResponseModelDTOOfPropertyGroupBillingConfigurationDTO.from_dict(paged_response_model_dtoof_property_group_billing_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
