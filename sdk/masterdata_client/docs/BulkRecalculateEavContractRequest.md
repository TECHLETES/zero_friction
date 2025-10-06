# BulkRecalculateEavContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_recalculate_eav_contract_request import BulkRecalculateEavContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRecalculateEavContractRequest from a JSON string
bulk_recalculate_eav_contract_request_instance = BulkRecalculateEavContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRecalculateEavContractRequest.to_json())

# convert the object into a dict
bulk_recalculate_eav_contract_request_dict = bulk_recalculate_eav_contract_request_instance.to_dict()
# create an instance of BulkRecalculateEavContractRequest from a dict
bulk_recalculate_eav_contract_request_from_dict = BulkRecalculateEavContractRequest.from_dict(bulk_recalculate_eav_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


