# BulkUpdateContractProductRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **datetime** |  | [optional] 
**product_id** | **str** |  | [optional] 
**parameter** | [**UpdateContractProductParameter**](UpdateContractProductParameter.md) |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_update_contract_product_request import BulkUpdateContractProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkUpdateContractProductRequest from a JSON string
bulk_update_contract_product_request_instance = BulkUpdateContractProductRequest.from_json(json)
# print the JSON string representation of the object
print(BulkUpdateContractProductRequest.to_json())

# convert the object into a dict
bulk_update_contract_product_request_dict = bulk_update_contract_product_request_instance.to_dict()
# create an instance of BulkUpdateContractProductRequest from a dict
bulk_update_contract_product_request_from_dict = BulkUpdateContractProductRequest.from_dict(bulk_update_contract_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


