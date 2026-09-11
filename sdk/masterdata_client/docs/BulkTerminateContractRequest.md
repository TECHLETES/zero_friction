# BulkTerminateContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**mutation_date_time** | **datetime** |  | [optional]
**keep_existing_invoice_on_end_date** | **bool** |  | [optional]
**create_prepayment_correction_for_charged_costs** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.bulk_terminate_contract_request import BulkTerminateContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkTerminateContractRequest from a JSON string
bulk_terminate_contract_request_instance = BulkTerminateContractRequest.from_json(json)
# print the JSON string representation of the object
print(BulkTerminateContractRequest.to_json())

# convert the object into a dict
bulk_terminate_contract_request_dict = bulk_terminate_contract_request_instance.to_dict()
# create an instance of BulkTerminateContractRequest from a dict
bulk_terminate_contract_request_from_dict = BulkTerminateContractRequest.from_dict(bulk_terminate_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
