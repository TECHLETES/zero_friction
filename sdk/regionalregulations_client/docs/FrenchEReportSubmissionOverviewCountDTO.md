# FrenchEReportSubmissionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**failed** | **int** |  | [optional] 
**pending** | **int** |  | [optional] 
**successful** | **int** |  | [optional] 

## Example

```python
from regionalregulations_client.models.french_e_report_submission_overview_count_dto import FrenchEReportSubmissionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportSubmissionOverviewCountDTO from a JSON string
french_e_report_submission_overview_count_dto_instance = FrenchEReportSubmissionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportSubmissionOverviewCountDTO.to_json())

# convert the object into a dict
french_e_report_submission_overview_count_dto_dict = french_e_report_submission_overview_count_dto_instance.to_dict()
# create an instance of FrenchEReportSubmissionOverviewCountDTO from a dict
french_e_report_submission_overview_count_dto_from_dict = FrenchEReportSubmissionOverviewCountDTO.from_dict(french_e_report_submission_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


