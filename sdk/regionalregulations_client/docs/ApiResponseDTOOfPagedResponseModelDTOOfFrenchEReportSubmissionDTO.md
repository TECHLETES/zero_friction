# ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PagedResponseModelDTOOfFrenchEReportSubmissionDTO**](PagedResponseModelDTOOfFrenchEReportSubmissionDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from regionalregulations_client.models.api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto import ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO from a JSON string
api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto_instance = ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO.to_json())

# convert the object into a dict
api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto_dict = api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO from a dict
api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto_from_dict = ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO.from_dict(api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


