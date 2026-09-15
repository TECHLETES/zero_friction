# BulkUpdateContractConsumptionGroupForUtilityRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**contract_service_estimated_consumption** | [**UpdateContractServiceEstimatedConsumptionRequest**](UpdateContractServiceEstimatedConsumptionRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_update_contract_consumption_group_for_utility_request import BulkUpdateContractConsumptionGroupForUtilityRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkUpdateContractConsumptionGroupForUtilityRequest from a JSON string
bulk_update_contract_consumption_group_for_utility_request_instance = BulkUpdateContractConsumptionGroupForUtilityRequest.from_json(json)
# print the JSON string representation of the object
print(BulkUpdateContractConsumptionGroupForUtilityRequest.to_json())

# convert the object into a dict
bulk_update_contract_consumption_group_for_utility_request_dict = bulk_update_contract_consumption_group_for_utility_request_instance.to_dict()
# create an instance of BulkUpdateContractConsumptionGroupForUtilityRequest from a dict
bulk_update_contract_consumption_group_for_utility_request_from_dict = BulkUpdateContractConsumptionGroupForUtilityRequest.from_dict(bulk_update_contract_consumption_group_for_utility_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


