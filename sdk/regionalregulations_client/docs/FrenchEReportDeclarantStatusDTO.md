# FrenchEReportDeclarantStatusDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**FrenchEReportSubmissionStatus**](FrenchEReportSubmissionStatus.md) |  | [optional] 
**submission_start_date** | **date** |  | [optional] 

## Example

```python
from regionalregulations_client.models.french_e_report_declarant_status_dto import FrenchEReportDeclarantStatusDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FrenchEReportDeclarantStatusDTO from a JSON string
french_e_report_declarant_status_dto_instance = FrenchEReportDeclarantStatusDTO.from_json(json)
# print the JSON string representation of the object
print(FrenchEReportDeclarantStatusDTO.to_json())

# convert the object into a dict
french_e_report_declarant_status_dto_dict = french_e_report_declarant_status_dto_instance.to_dict()
# create an instance of FrenchEReportDeclarantStatusDTO from a dict
french_e_report_declarant_status_dto_from_dict = FrenchEReportDeclarantStatusDTO.from_dict(french_e_report_declarant_status_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


