# PagedPropertyGroupBillingConfigurationsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group_ids** | **List[str]** |  | [optional] 

## Example

```python
from billing_client.models.paged_property_group_billing_configurations_query_params import PagedPropertyGroupBillingConfigurationsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedPropertyGroupBillingConfigurationsQueryParams from a JSON string
paged_property_group_billing_configurations_query_params_instance = PagedPropertyGroupBillingConfigurationsQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedPropertyGroupBillingConfigurationsQueryParams.to_json())

# convert the object into a dict
paged_property_group_billing_configurations_query_params_dict = paged_property_group_billing_configurations_query_params_instance.to_dict()
# create an instance of PagedPropertyGroupBillingConfigurationsQueryParams from a dict
paged_property_group_billing_configurations_query_params_from_dict = PagedPropertyGroupBillingConfigurationsQueryParams.from_dict(paged_property_group_billing_configurations_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


