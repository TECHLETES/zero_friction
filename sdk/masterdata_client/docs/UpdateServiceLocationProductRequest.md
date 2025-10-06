# UpdateServiceLocationProductRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_service_location_product_request import UpdateServiceLocationProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateServiceLocationProductRequest from a JSON string
update_service_location_product_request_instance = UpdateServiceLocationProductRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateServiceLocationProductRequest.to_json())

# convert the object into a dict
update_service_location_product_request_dict = update_service_location_product_request_instance.to_dict()
# create an instance of UpdateServiceLocationProductRequest from a dict
update_service_location_product_request_from_dict = UpdateServiceLocationProductRequest.from_dict(update_service_location_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


