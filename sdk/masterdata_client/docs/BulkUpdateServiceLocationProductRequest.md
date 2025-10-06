# BulkUpdateServiceLocationProductRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_update_service_location_product_request import BulkUpdateServiceLocationProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkUpdateServiceLocationProductRequest from a JSON string
bulk_update_service_location_product_request_instance = BulkUpdateServiceLocationProductRequest.from_json(json)
# print the JSON string representation of the object
print(BulkUpdateServiceLocationProductRequest.to_json())

# convert the object into a dict
bulk_update_service_location_product_request_dict = bulk_update_service_location_product_request_instance.to_dict()
# create an instance of BulkUpdateServiceLocationProductRequest from a dict
bulk_update_service_location_product_request_from_dict = BulkUpdateServiceLocationProductRequest.from_dict(bulk_update_service_location_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


