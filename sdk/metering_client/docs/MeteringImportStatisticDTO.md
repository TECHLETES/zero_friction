# MeteringImportStatisticDTO

Contains the statistics of a metering import phase to know how many values were processed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount_success** | **int** | How many values were successfully processed in the metering import phase? | [optional] 
**amount_failed** | **int** | How many values could not be processed in the metering import phase? | [optional] 
**amount_ignored** | **int** | How many values did we ignore in the metering import phase?  This can happen if a measurement was already processed with the same date and value on a channel. | [optional] 

## Example

```python
from metering_client.models.metering_import_statistic_dto import MeteringImportStatisticDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportStatisticDTO from a JSON string
metering_import_statistic_dto_instance = MeteringImportStatisticDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportStatisticDTO.to_json())

# convert the object into a dict
metering_import_statistic_dto_dict = metering_import_statistic_dto_instance.to_dict()
# create an instance of MeteringImportStatisticDTO from a dict
metering_import_statistic_dto_from_dict = MeteringImportStatisticDTO.from_dict(metering_import_statistic_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


