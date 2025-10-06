# TextInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ansi_code_page** | **int** |  | [optional] [readonly] 
**oem_code_page** | **int** |  | [optional] [readonly] 
**mac_code_page** | **int** |  | [optional] [readonly] 
**ebcdic_code_page** | **int** |  | [optional] [readonly] 
**lcid** | **int** |  | [optional] [readonly] 
**culture_name** | **str** |  | [optional] [readonly] 
**is_read_only** | **bool** |  | [optional] [readonly] 
**list_separator** | **str** |  | [optional] 
**is_right_to_left** | **bool** |  | [optional] [readonly] 

## Example

```python
from masterdata_client.models.text_info import TextInfo

# TODO update the JSON string below
json = "{}"
# create an instance of TextInfo from a JSON string
text_info_instance = TextInfo.from_json(json)
# print the JSON string representation of the object
print(TextInfo.to_json())

# convert the object into a dict
text_info_dict = text_info_instance.to_dict()
# create an instance of TextInfo from a dict
text_info_from_dict = TextInfo.from_dict(text_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


