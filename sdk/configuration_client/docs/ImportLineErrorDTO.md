# ImportLineErrorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**line_number** | **int** |  | [optional] 
**error_messages** | [**List[ErrorCode]**](ErrorCode.md) |  | [optional] 
**is_valid** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.import_line_error_dto import ImportLineErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImportLineErrorDTO from a JSON string
import_line_error_dto_instance = ImportLineErrorDTO.from_json(json)
# print the JSON string representation of the object
print(ImportLineErrorDTO.to_json())

# convert the object into a dict
import_line_error_dto_dict = import_line_error_dto_instance.to_dict()
# create an instance of ImportLineErrorDTO from a dict
import_line_error_dto_from_dict = ImportLineErrorDTO.from_dict(import_line_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


