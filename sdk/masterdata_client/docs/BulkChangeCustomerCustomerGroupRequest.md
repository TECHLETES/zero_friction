# BulkChangeCustomerCustomerGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_group_id** | **str** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_change_customer_customer_group_request import BulkChangeCustomerCustomerGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangeCustomerCustomerGroupRequest from a JSON string
bulk_change_customer_customer_group_request_instance = BulkChangeCustomerCustomerGroupRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangeCustomerCustomerGroupRequest.to_json())

# convert the object into a dict
bulk_change_customer_customer_group_request_dict = bulk_change_customer_customer_group_request_instance.to_dict()
# create an instance of BulkChangeCustomerCustomerGroupRequest from a dict
bulk_change_customer_customer_group_request_from_dict = BulkChangeCustomerCustomerGroupRequest.from_dict(bulk_change_customer_customer_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


