# ChangeDraftContractAdvanceAmountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_advance_amount** | **float** |  | [optional] 

## Example

```python
from masterdata_client.models.change_draft_contract_advance_amount_request import ChangeDraftContractAdvanceAmountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeDraftContractAdvanceAmountRequest from a JSON string
change_draft_contract_advance_amount_request_instance = ChangeDraftContractAdvanceAmountRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeDraftContractAdvanceAmountRequest.to_json())

# convert the object into a dict
change_draft_contract_advance_amount_request_dict = change_draft_contract_advance_amount_request_instance.to_dict()
# create an instance of ChangeDraftContractAdvanceAmountRequest from a dict
change_draft_contract_advance_amount_request_from_dict = ChangeDraftContractAdvanceAmountRequest.from_dict(change_draft_contract_advance_amount_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


