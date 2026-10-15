# UpdateContractConsumptionGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services** | [**List[UpdateContractConsumptionGroupRequest]**](UpdateContractConsumptionGroupRequest.md) |  | 

## Example

```python
from masterdata_client.models.update_contract_consumption_groups_request import UpdateContractConsumptionGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractConsumptionGroupsRequest from a JSON string
update_contract_consumption_groups_request_instance = UpdateContractConsumptionGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractConsumptionGroupsRequest.to_json())

# convert the object into a dict
update_contract_consumption_groups_request_dict = update_contract_consumption_groups_request_instance.to_dict()
# create an instance of UpdateContractConsumptionGroupsRequest from a dict
update_contract_consumption_groups_request_from_dict = UpdateContractConsumptionGroupsRequest.from_dict(update_contract_consumption_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


