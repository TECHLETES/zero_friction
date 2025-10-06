# UpdateExternalIdRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_external_id_request import UpdateExternalIdRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateExternalIdRequest from a JSON string
update_external_id_request_instance = UpdateExternalIdRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateExternalIdRequest.to_json())

# convert the object into a dict
update_external_id_request_dict = update_external_id_request_instance.to_dict()
# create an instance of UpdateExternalIdRequest from a dict
update_external_id_request_from_dict = UpdateExternalIdRequest.from_dict(update_external_id_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


