# UpdateCustomerGroupNameRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_customer_group_name_request import UpdateCustomerGroupNameRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerGroupNameRequest from a JSON string
update_customer_group_name_request_instance = UpdateCustomerGroupNameRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerGroupNameRequest.to_json())

# convert the object into a dict
update_customer_group_name_request_dict = update_customer_group_name_request_instance.to_dict()
# create an instance of UpdateCustomerGroupNameRequest from a dict
update_customer_group_name_request_from_dict = UpdateCustomerGroupNameRequest.from_dict(update_customer_group_name_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


