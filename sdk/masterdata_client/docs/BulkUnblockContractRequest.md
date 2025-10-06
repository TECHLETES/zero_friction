# BulkUnblockContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_unblock_contract_request import BulkUnblockContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkUnblockContractRequest from a JSON string
bulk_unblock_contract_request_instance = BulkUnblockContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkUnblockContractRequest.to_json())

# convert the object into a dict
bulk_unblock_contract_request_dict = bulk_unblock_contract_request_instance.to_dict()
# create an instance of BulkUnblockContractRequest from a dict
bulk_unblock_contract_request_from_dict = BulkUnblockContractRequest.from_dict(bulk_unblock_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


