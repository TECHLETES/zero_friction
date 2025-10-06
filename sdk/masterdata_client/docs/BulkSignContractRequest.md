# BulkSignContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 
**keep_existing_invoice_on_end_date** | **bool** | When this flag is set, if an invoice exists with the end date equal to the move-out date,  no credit note shall be created. | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_sign_contract_request import BulkSignContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSignContractRequest from a JSON string
bulk_sign_contract_request_instance = BulkSignContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSignContractRequest.to_json())

# convert the object into a dict
bulk_sign_contract_request_dict = bulk_sign_contract_request_instance.to_dict()
# create an instance of BulkSignContractRequest from a dict
bulk_sign_contract_request_from_dict = BulkSignContractRequest.from_dict(bulk_sign_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


