# MeteringImportStatisticDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount_success** | **int** |  | [optional] 
**amount_failed** | **int** |  | [optional] 
**amount_ignored** | **int** |  | [optional] 

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


