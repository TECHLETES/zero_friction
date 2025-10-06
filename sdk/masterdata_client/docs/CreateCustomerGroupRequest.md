# CreateCustomerGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**settings** | [**CreateCustomerGroupSettingsRequest**](CreateCustomerGroupSettingsRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_customer_group_request import CreateCustomerGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomerGroupRequest from a JSON string
create_customer_group_request_instance = CreateCustomerGroupRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomerGroupRequest.to_json())

# convert the object into a dict
create_customer_group_request_dict = create_customer_group_request_instance.to_dict()
# create an instance of CreateCustomerGroupRequest from a dict
create_customer_group_request_from_dict = CreateCustomerGroupRequest.from_dict(create_customer_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


