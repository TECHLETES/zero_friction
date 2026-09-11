# BaseMigrationFormatDTOZFBulkImportFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**time_zone** | **str** |  |
**date_time_format** | **str** |  |
**delimiter** | **str** |  | [default to ';']
**number_thousands_seperator** | **str** |  | [optional]
**number_decimal_seperator** | **str** |  |
**invoice_date_handling** | [**ImportContractInvoiceDateHandling**](ImportContractInvoiceDateHandling.md) |  |
**expect_advances_to_be_imported_periodically** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.base_migration_format_dtozf_bulk_import_format_dto import BaseMigrationFormatDTOZFBulkImportFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMigrationFormatDTOZFBulkImportFormatDTO from a JSON string
base_migration_format_dtozf_bulk_import_format_dto_instance = BaseMigrationFormatDTOZFBulkImportFormatDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMigrationFormatDTOZFBulkImportFormatDTO.to_json())

# convert the object into a dict
base_migration_format_dtozf_bulk_import_format_dto_dict = base_migration_format_dtozf_bulk_import_format_dto_instance.to_dict()
# create an instance of BaseMigrationFormatDTOZFBulkImportFormatDTO from a dict
base_migration_format_dtozf_bulk_import_format_dto_from_dict = BaseMigrationFormatDTOZFBulkImportFormatDTO.from_dict(base_migration_format_dtozf_bulk_import_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
