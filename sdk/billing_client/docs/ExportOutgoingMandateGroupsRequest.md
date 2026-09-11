# ExportOutgoingMandateGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_ids** | **List[str]** |  | [optional]
**format_type** | [**MandateExportFormatType**](MandateExportFormatType.md) |  | [optional]

## Example

```python
from billing_client.models.export_outgoing_mandate_groups_request import ExportOutgoingMandateGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportOutgoingMandateGroupsRequest from a JSON string
export_outgoing_mandate_groups_request_instance = ExportOutgoingMandateGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(ExportOutgoingMandateGroupsRequest.to_json())

# convert the object into a dict
export_outgoing_mandate_groups_request_dict = export_outgoing_mandate_groups_request_instance.to_dict()
# create an instance of ExportOutgoingMandateGroupsRequest from a dict
export_outgoing_mandate_groups_request_from_dict = ExportOutgoingMandateGroupsRequest.from_dict(export_outgoing_mandate_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
