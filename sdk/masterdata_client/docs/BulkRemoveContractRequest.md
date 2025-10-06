# BulkRemoveContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_remove_contract_request import BulkRemoveContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRemoveContractRequest from a JSON string
bulk_remove_contract_request_instance = BulkRemoveContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRemoveContractRequest.to_json())

# convert the object into a dict
bulk_remove_contract_request_dict = bulk_remove_contract_request_instance.to_dict()
# create an instance of BulkRemoveContractRequest from a dict
bulk_remove_contract_request_from_dict = BulkRemoveContractRequest.from_dict(bulk_remove_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


