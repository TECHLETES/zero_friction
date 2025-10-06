# MeteringImportDataImportDto

If the metering import was created via a data provider (mail, FTP, ...), it will contain the data  of that data provider.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The ID of the data provider. | [optional] 
**name** | **str** | The name of the data provider. | [optional] 

## Example

```python
from metering_client.models.metering_import_data_import_dto import MeteringImportDataImportDto

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportDataImportDto from a JSON string
metering_import_data_import_dto_instance = MeteringImportDataImportDto.from_json(json)
# print the JSON string representation of the object
print(MeteringImportDataImportDto.to_json())

# convert the object into a dict
metering_import_data_import_dto_dict = metering_import_data_import_dto_instance.to_dict()
# create an instance of MeteringImportDataImportDto from a dict
metering_import_data_import_dto_from_dict = MeteringImportDataImportDto.from_dict(metering_import_data_import_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


