# BulkRemoveCustomerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.bulk_remove_customer_request import BulkRemoveCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRemoveCustomerRequest from a JSON string
bulk_remove_customer_request_instance = BulkRemoveCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRemoveCustomerRequest.to_json())

# convert the object into a dict
bulk_remove_customer_request_dict = bulk_remove_customer_request_instance.to_dict()
# create an instance of BulkRemoveCustomerRequest from a dict
bulk_remove_customer_request_from_dict = BulkRemoveCustomerRequest.from_dict(bulk_remove_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
