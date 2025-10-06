# DeliveryResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | [**ErrorCode**](ErrorCode.md) |  | [optional] 
**additional_details** | **str** |  | [optional] 

## Example

```python
from communication_client.models.delivery_result import DeliveryResult

# TODO update the JSON string below
json = "{}"
# create an instance of DeliveryResult from a JSON string
delivery_result_instance = DeliveryResult.from_json(json)
# print the JSON string representation of the object
print(DeliveryResult.to_json())

# convert the object into a dict
delivery_result_dict = delivery_result_instance.to_dict()
# create an instance of DeliveryResult from a dict
delivery_result_from_dict = DeliveryResult.from_dict(delivery_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


