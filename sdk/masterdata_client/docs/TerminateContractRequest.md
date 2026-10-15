# TerminateContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | 
**keep_existing_invoice_on_end_date** | **bool** |  | [optional] 
**create_prepayment_correction_for_charged_costs** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.terminate_contract_request import TerminateContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TerminateContractRequest from a JSON string
terminate_contract_request_instance = TerminateContractRequest.from_json(json)
# print the JSON string representation of the object
print(TerminateContractRequest.to_json())

# convert the object into a dict
terminate_contract_request_dict = terminate_contract_request_instance.to_dict()
# create an instance of TerminateContractRequest from a dict
terminate_contract_request_from_dict = TerminateContractRequest.from_dict(terminate_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


