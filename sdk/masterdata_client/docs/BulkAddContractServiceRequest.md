# BulkAddContractServiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**estimated_consumption** | [**AddContractServiceEstimatedConsumptionRequest**](AddContractServiceEstimatedConsumptionRequest.md) |  | 

## Example

```python
from masterdata_client.models.bulk_add_contract_service_request import BulkAddContractServiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkAddContractServiceRequest from a JSON string
bulk_add_contract_service_request_instance = BulkAddContractServiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkAddContractServiceRequest.to_json())

# convert the object into a dict
bulk_add_contract_service_request_dict = bulk_add_contract_service_request_instance.to_dict()
# create an instance of BulkAddContractServiceRequest from a dict
bulk_add_contract_service_request_from_dict = BulkAddContractServiceRequest.from_dict(bulk_add_contract_service_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


