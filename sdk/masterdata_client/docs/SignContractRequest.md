# SignContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 
**keep_existing_invoice_on_end_date** | **bool** | When this flag is set, if an invoice exists with the end date equal to the move-out date,  no credit note shall be created. | [optional] 

## Example

```python
from masterdata_client.models.sign_contract_request import SignContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SignContractRequest from a JSON string
sign_contract_request_instance = SignContractRequest.from_json(json)
# print the JSON string representation of the object
print(SignContractRequest.to_json())

# convert the object into a dict
sign_contract_request_dict = sign_contract_request_instance.to_dict()
# create an instance of SignContractRequest from a dict
sign_contract_request_from_dict = SignContractRequest.from_dict(sign_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


