# CustomCsvMeteringValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**measurement_path** | **str** |  |
**period_end_date_time_path** | **str** |  |
**period_start_date_time_path** | **str** |  | [optional]
**attributes** | [**List[CustomCsvMeteringValueAttributeDTO]**](CustomCsvMeteringValueAttributeDTO.md) |  |

## Example

```python
from configuration_client.models.custom_csv_metering_value_dto import CustomCsvMeteringValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomCsvMeteringValueDTO from a JSON string
custom_csv_metering_value_dto_instance = CustomCsvMeteringValueDTO.from_json(json)
# print the JSON string representation of the object
print(CustomCsvMeteringValueDTO.to_json())

# convert the object into a dict
custom_csv_metering_value_dto_dict = custom_csv_metering_value_dto_instance.to_dict()
# create an instance of CustomCsvMeteringValueDTO from a dict
custom_csv_metering_value_dto_from_dict = CustomCsvMeteringValueDTO.from_dict(custom_csv_metering_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
