# UpdateExternalContractReferenceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_contract_reference** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.update_external_contract_reference_request import UpdateExternalContractReferenceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateExternalContractReferenceRequest from a JSON string
update_external_contract_reference_request_instance = UpdateExternalContractReferenceRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateExternalContractReferenceRequest.to_json())

# convert the object into a dict
update_external_contract_reference_request_dict = update_external_contract_reference_request_instance.to_dict()
# create an instance of UpdateExternalContractReferenceRequest from a dict
update_external_contract_reference_request_from_dict = UpdateExternalContractReferenceRequest.from_dict(update_external_contract_reference_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


