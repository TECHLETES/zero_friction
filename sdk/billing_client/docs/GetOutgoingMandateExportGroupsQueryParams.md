# GetOutgoingMandateExportGroupsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_bank_account_id** | **str** |  | [optional]
**status** | [**OutgoingMandateExportStatus**](OutgoingMandateExportStatus.md) |  | [optional]

## Example

```python
from billing_client.models.get_outgoing_mandate_export_groups_query_params import GetOutgoingMandateExportGroupsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetOutgoingMandateExportGroupsQueryParams from a JSON string
get_outgoing_mandate_export_groups_query_params_instance = GetOutgoingMandateExportGroupsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetOutgoingMandateExportGroupsQueryParams.to_json())

# convert the object into a dict
get_outgoing_mandate_export_groups_query_params_dict = get_outgoing_mandate_export_groups_query_params_instance.to_dict()
# create an instance of GetOutgoingMandateExportGroupsQueryParams from a dict
get_outgoing_mandate_export_groups_query_params_from_dict = GetOutgoingMandateExportGroupsQueryParams.from_dict(get_outgoing_mandate_export_groups_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
