# OutgoingMandateExportOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional]
**not_sent** | **int** |  | [optional]
**sending** | **int** |  | [optional]
**sent** | **int** |  | [optional]

## Example

```python
from billing_client.models.outgoing_mandate_export_overview_count_dto import OutgoingMandateExportOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMandateExportOverviewCountDTO from a JSON string
outgoing_mandate_export_overview_count_dto_instance = OutgoingMandateExportOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMandateExportOverviewCountDTO.to_json())

# convert the object into a dict
outgoing_mandate_export_overview_count_dto_dict = outgoing_mandate_export_overview_count_dto_instance.to_dict()
# create an instance of OutgoingMandateExportOverviewCountDTO from a dict
outgoing_mandate_export_overview_count_dto_from_dict = OutgoingMandateExportOverviewCountDTO.from_dict(outgoing_mandate_export_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
