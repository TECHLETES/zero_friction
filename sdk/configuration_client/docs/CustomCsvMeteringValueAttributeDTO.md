# CustomCsvMeteringValueAttributeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attribute_type** | [**AttributeType**](AttributeType.md) |  |
**path** | **str** |  |
**fixed_value** | **str** |  |
**is_fixed** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.custom_csv_metering_value_attribute_dto import CustomCsvMeteringValueAttributeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomCsvMeteringValueAttributeDTO from a JSON string
custom_csv_metering_value_attribute_dto_instance = CustomCsvMeteringValueAttributeDTO.from_json(json)
# print the JSON string representation of the object
print(CustomCsvMeteringValueAttributeDTO.to_json())

# convert the object into a dict
custom_csv_metering_value_attribute_dto_dict = custom_csv_metering_value_attribute_dto_instance.to_dict()
# create an instance of CustomCsvMeteringValueAttributeDTO from a dict
custom_csv_metering_value_attribute_dto_from_dict = CustomCsvMeteringValueAttributeDTO.from_dict(custom_csv_metering_value_attribute_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
