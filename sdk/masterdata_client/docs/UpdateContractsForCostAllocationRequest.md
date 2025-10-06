# UpdateContractsForCostAllocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_ids** | **List[str]** |  | [optional] 

## Example

```python
from masterdata_client.models.update_contracts_for_cost_allocation_request import UpdateContractsForCostAllocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateContractsForCostAllocationRequest from a JSON string
update_contracts_for_cost_allocation_request_instance = UpdateContractsForCostAllocationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateContractsForCostAllocationRequest.to_json())

# convert the object into a dict
update_contracts_for_cost_allocation_request_dict = update_contracts_for_cost_allocation_request_instance.to_dict()
# create an instance of UpdateContractsForCostAllocationRequest from a dict
update_contracts_for_cost_allocation_request_from_dict = UpdateContractsForCostAllocationRequest.from_dict(update_contracts_for_cost_allocation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


