# UpdateCultureTableRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_culture_name** | **str** |  | [optional] 
**supported_culture_names** | **List[str]** |  | [optional] 

## Example

```python
from configuration_client.models.update_culture_table_request import UpdateCultureTableRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCultureTableRequest from a JSON string
update_culture_table_request_instance = UpdateCultureTableRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCultureTableRequest.to_json())

# convert the object into a dict
update_culture_table_request_dict = update_culture_table_request_instance.to_dict()
# create an instance of UpdateCultureTableRequest from a dict
update_culture_table_request_from_dict = UpdateCultureTableRequest.from_dict(update_culture_table_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


