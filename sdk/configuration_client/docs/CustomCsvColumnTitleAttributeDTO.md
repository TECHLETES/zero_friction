# CustomCsvColumnTitleAttributeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attribute_type** | [**AttributeType**](AttributeType.md) |  |
**segment_index** | **int** |  |
**fixed_value** | **str** |  |
**is_fixed** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.custom_csv_column_title_attribute_dto import CustomCsvColumnTitleAttributeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomCsvColumnTitleAttributeDTO from a JSON string
custom_csv_column_title_attribute_dto_instance = CustomCsvColumnTitleAttributeDTO.from_json(json)
# print the JSON string representation of the object
print(CustomCsvColumnTitleAttributeDTO.to_json())

# convert the object into a dict
custom_csv_column_title_attribute_dto_dict = custom_csv_column_title_attribute_dto_instance.to_dict()
# create an instance of CustomCsvColumnTitleAttributeDTO from a dict
custom_csv_column_title_attribute_dto_from_dict = CustomCsvColumnTitleAttributeDTO.from_dict(custom_csv_column_title_attribute_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
