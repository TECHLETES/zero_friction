# UpdateCollectionDayRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_day_of_month** | **int** |  | [optional]

## Example

```python
from masterdata_client.models.update_collection_day_request import UpdateCollectionDayRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCollectionDayRequest from a JSON string
update_collection_day_request_instance = UpdateCollectionDayRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCollectionDayRequest.to_json())

# convert the object into a dict
update_collection_day_request_dict = update_collection_day_request_instance.to_dict()
# create an instance of UpdateCollectionDayRequest from a dict
update_collection_day_request_from_dict = UpdateCollectionDayRequest.from_dict(update_collection_day_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
