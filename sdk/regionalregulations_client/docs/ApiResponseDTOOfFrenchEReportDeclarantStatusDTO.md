# ApiResponseDTOOfFrenchEReportDeclarantStatusDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**FrenchEReportDeclarantStatusDTO**](FrenchEReportDeclarantStatusDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from regionalregulations_client.models.api_response_dtoof_french_e_report_declarant_status_dto import ApiResponseDTOOfFrenchEReportDeclarantStatusDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfFrenchEReportDeclarantStatusDTO from a JSON string
api_response_dtoof_french_e_report_declarant_status_dto_instance = ApiResponseDTOOfFrenchEReportDeclarantStatusDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfFrenchEReportDeclarantStatusDTO.to_json())

# convert the object into a dict
api_response_dtoof_french_e_report_declarant_status_dto_dict = api_response_dtoof_french_e_report_declarant_status_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfFrenchEReportDeclarantStatusDTO from a dict
api_response_dtoof_french_e_report_declarant_status_dto_from_dict = ApiResponseDTOOfFrenchEReportDeclarantStatusDTO.from_dict(api_response_dtoof_french_e_report_declarant_status_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


