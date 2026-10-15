# BulkTriggerInvoiceEstimationForContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_trigger_invoice_estimation_for_contract_request import BulkTriggerInvoiceEstimationForContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkTriggerInvoiceEstimationForContractRequest from a JSON string
bulk_trigger_invoice_estimation_for_contract_request_instance = BulkTriggerInvoiceEstimationForContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkTriggerInvoiceEstimationForContractRequest.to_json())

# convert the object into a dict
bulk_trigger_invoice_estimation_for_contract_request_dict = bulk_trigger_invoice_estimation_for_contract_request_instance.to_dict()
# create an instance of BulkTriggerInvoiceEstimationForContractRequest from a dict
bulk_trigger_invoice_estimation_for_contract_request_from_dict = BulkTriggerInvoiceEstimationForContractRequest.from_dict(bulk_trigger_invoice_estimation_for_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


