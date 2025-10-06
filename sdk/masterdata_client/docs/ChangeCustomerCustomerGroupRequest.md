# ChangeCustomerCustomerGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_group_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.change_customer_customer_group_request import ChangeCustomerCustomerGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCustomerCustomerGroupRequest from a JSON string
change_customer_customer_group_request_instance = ChangeCustomerCustomerGroupRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCustomerCustomerGroupRequest.to_json())

# convert the object into a dict
change_customer_customer_group_request_dict = change_customer_customer_group_request_instance.to_dict()
# create an instance of ChangeCustomerCustomerGroupRequest from a dict
change_customer_customer_group_request_from_dict = ChangeCustomerCustomerGroupRequest.from_dict(change_customer_customer_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


