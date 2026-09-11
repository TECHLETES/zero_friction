# GetMeteringIssuesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_ids** | **List[str]** |  | [optional]
**noticed_start_date_time** | **datetime** |  | [optional]
**noticed_end_date_time** | **datetime** |  | [optional]
**statuses** | [**List[MeteringIssueStatus]**](MeteringIssueStatus.md) |  | [optional]
**property_group_ids** | **List[str]** |  | [optional]
**meter_model_ids** | **List[str]** |  | [optional]
**errors** | [**List[MeteringIssueError]**](MeteringIssueError.md) |  | [optional]
**reading_origins** | [**List[MeasurementReadingOrigin]**](MeasurementReadingOrigin.md) |  | [optional]
**data_provider_ids** | **List[str]** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from metering_client.models.get_metering_issues_query_params import GetMeteringIssuesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMeteringIssuesQueryParams from a JSON string
get_metering_issues_query_params_instance = GetMeteringIssuesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMeteringIssuesQueryParams.to_json())

# convert the object into a dict
get_metering_issues_query_params_dict = get_metering_issues_query_params_instance.to_dict()
# create an instance of GetMeteringIssuesQueryParams from a dict
get_metering_issues_query_params_from_dict = GetMeteringIssuesQueryParams.from_dict(get_metering_issues_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
