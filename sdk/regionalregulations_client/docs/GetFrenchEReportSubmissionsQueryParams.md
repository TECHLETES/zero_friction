# GetFrenchEReportSubmissionsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**FrenchEReportSubmissionStatus**](FrenchEReportSubmissionStatus.md) |  | [optional] 
**type** | [**FrenchEReportSubmissionType**](FrenchEReportSubmissionType.md) |  | [optional] 
**only_count** | **bool** |  | [optional] 
**apply_filters_over_included_ids** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from regionalregulations_client.models.get_french_e_report_submissions_query_params import GetFrenchEReportSubmissionsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetFrenchEReportSubmissionsQueryParams from a JSON string
get_french_e_report_submissions_query_params_instance = GetFrenchEReportSubmissionsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetFrenchEReportSubmissionsQueryParams.to_json())

# convert the object into a dict
get_french_e_report_submissions_query_params_dict = get_french_e_report_submissions_query_params_instance.to_dict()
# create an instance of GetFrenchEReportSubmissionsQueryParams from a dict
get_french_e_report_submissions_query_params_from_dict = GetFrenchEReportSubmissionsQueryParams.from_dict(get_french_e_report_submissions_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


