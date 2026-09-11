# UpdateContractConsumptionGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  |
**estimated_consumptions** | [**List[UpdateContractServiceEstimatedConsumptionRequest]**](UpdateContractServiceEstimatedConsumptionRequest.md) |  |

## Example

```python
from masterdata_client.models.update_contract_consumption_group_request import UpdateContractConsumptionGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractConsumptionGroupRequest from a JSON string
update_contract_consumption_group_request_instance = UpdateContractConsumptionGroupRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractConsumptionGroupRequest.to_json())

# convert the object into a dict
update_contract_consumption_group_request_dict = update_contract_consumption_group_request_instance.to_dict()
# create an instance of UpdateContractConsumptionGroupRequest from a dict
update_contract_consumption_group_request_from_dict = UpdateContractConsumptionGroupRequest.from_dict(update_contract_consumption_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
