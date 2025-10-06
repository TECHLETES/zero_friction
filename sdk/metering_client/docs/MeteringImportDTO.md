# MeteringImportDTO

Contains the details of the metering import to determine the status and how many measurements we could process,  as well as the information how the metering import was originally created.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**type** | [**MeteringImportType**](MeteringImportType.md) | What kind of data do we want to process in this metering import? | [optional] 
**custom_file_format_id** | **str** | The ID of a configured custom file format if you want to process a file in a specific format. | [optional] 
**data_import** | [**MeteringImportDataImportDto**](MeteringImportDataImportDto.md) | If the metering import was created via a data provider (mail, FTP, ...), it will contain the data  of that data provider. | [optional] 
**data_file_format_settings** | [**MeteringImportDataFileFormatDto**](MeteringImportDataFileFormatDto.md) | Stores the configuration values of the custom file format that was applied during processing.  This snapshot ensures that historical format settings are preserved, even if the format configuration changes later.                This is particularly useful for audit trails. | [optional] 
**metering_format** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) | The type of metering import file that you want to process. | [optional] 
**communication_type** | [**DataImportCommunicationType**](DataImportCommunicationType.md) | How did we receive the data for the metering import?  Mainly used for auditing purposes. | [optional] 
**automatically_process** | **bool** | Should the metering import start processing automatically (even if there are failed values) or should  it be started manually? | [optional] 
**status** | [**MeteringImportStatus**](MeteringImportStatus.md) | The status or different phases of the metering import. | [optional] 
**file_name** | **str** | The filename of the file to process.  Is set to &#39;source.json&#39; by default if you create a metering import with values based on JSON input. | [optional] 
**source** | **str** | Set the source of the metering import.  Mainly used for auditing purposes. | [optional] 
**interpretation_result** | [**MeteringImportStatisticDTO**](MeteringImportStatisticDTO.md) | Statistics about how many values we could interpreted successfully. | [optional] 
**validation_result** | [**MeteringImportStatisticDTO**](MeteringImportStatisticDTO.md) | Statistics about how many values we could validate successfully. | [optional] 
**processing_result** | [**MeteringImportStatisticDTO**](MeteringImportStatisticDTO.md) | Statistics about how many values we could process successfully. | [optional] 

## Example

```python
from metering_client.models.metering_import_dto import MeteringImportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportDTO from a JSON string
metering_import_dto_instance = MeteringImportDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportDTO.to_json())

# convert the object into a dict
metering_import_dto_dict = metering_import_dto_instance.to_dict()
# create an instance of MeteringImportDTO from a dict
metering_import_dto_from_dict = MeteringImportDTO.from_dict(metering_import_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


