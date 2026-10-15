# BulkRemoveContractServiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 

## Example

```python
from masterdata_client.models.bulk_remove_contract_service_request import BulkRemoveContractServiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRemoveContractServiceRequest from a JSON string
bulk_remove_contract_service_request_instance = BulkRemoveContractServiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRemoveContractServiceRequest.to_json())

# convert the object into a dict
bulk_remove_contract_service_request_dict = bulk_remove_contract_service_request_instance.to_dict()
# create an instance of BulkRemoveContractServiceRequest from a dict
bulk_remove_contract_service_request_from_dict = BulkRemoveContractServiceRequest.from_dict(bulk_remove_contract_service_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


