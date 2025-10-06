# MeteringImportInterpretationResultDTO

Used to give an overview of the issues that were discovered during the metering import interpretation phase.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issues** | [**List[MeteringImportInterpretationIssueDTO]**](MeteringImportInterpretationIssueDTO.md) | List of all the found interpretation issues. | [optional] 

## Example

```python
from metering_client.models.metering_import_interpretation_result_dto import MeteringImportInterpretationResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportInterpretationResultDTO from a JSON string
metering_import_interpretation_result_dto_instance = MeteringImportInterpretationResultDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportInterpretationResultDTO.to_json())

# convert the object into a dict
metering_import_interpretation_result_dto_dict = metering_import_interpretation_result_dto_instance.to_dict()
# create an instance of MeteringImportInterpretationResultDTO from a dict
metering_import_interpretation_result_dto_from_dict = MeteringImportInterpretationResultDTO.from_dict(metering_import_interpretation_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


