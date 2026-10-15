# FrenchEReportSubmissionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**FrenchEReportSubmissionType**](FrenchEReportSubmissionType.md) |  | [optional] 
**reference** | **str** |  | [optional] 
**reporting_date** | **date** |  | [optional] 
**status** | [**FrenchEReportSubmissionStatus**](FrenchEReportSubmissionStatus.md) |  | [optional] 
**recommand_external_id** | **str** |  | [optional] 
**currency** | **str** |  | [optional] 
**category_code** | **str** |  | [optional] 
**total_amount_ex_vat** | **float** |  | [optional] 
**total_vat_amount** | **float** |  | [optional] 
**total_amount_inc_vat** | **float** |  | [optional] 
**invoice_count** | **int** |  | [optional] 
**error_message** | **str** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from regionalregulations_client.models.french_e_report_submission_dto import FrenchEReportSubmissionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportSubmissionDTO from a JSON string
french_e_report_submission_dto_instance = FrenchEReportSubmissionDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportSubmissionDTO.to_json())

# convert the object into a dict
french_e_report_submission_dto_dict = french_e_report_submission_dto_instance.to_dict()
# create an instance of FrenchEReportSubmissionDTO from a dict
french_e_report_submission_dto_from_dict = FrenchEReportSubmissionDTO.from_dict(french_e_report_submission_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


