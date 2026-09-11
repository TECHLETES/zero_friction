# MeteringImportInterpretationIssueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**error_code_info** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**line_number** | **int** |  | [optional]
**message** | **str** |  | [optional]

## Example

```python
from metering_client.models.metering_import_interpretation_issue_dto import MeteringImportInterpretationIssueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportInterpretationIssueDTO from a JSON string
metering_import_interpretation_issue_dto_instance = MeteringImportInterpretationIssueDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportInterpretationIssueDTO.to_json())

# convert the object into a dict
metering_import_interpretation_issue_dto_dict = metering_import_interpretation_issue_dto_instance.to_dict()
# create an instance of MeteringImportInterpretationIssueDTO from a dict
metering_import_interpretation_issue_dto_from_dict = MeteringImportInterpretationIssueDTO.from_dict(metering_import_interpretation_issue_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
