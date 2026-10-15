# IncomingTransferMatchDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** |  | [optional] 
**transaction_reference_type** | [**TransactionReferenceType**](TransactionReferenceType.md) |  | [optional] 
**reference_id** | **str** |  | [optional] 
**reference_display_name** | **str** |  | [optional] 
**amount_to_settle** | **float** |  | [optional] 

## Example

```python
from billing_client.models.incoming_transfer_match_dto import IncomingTransferMatchDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingTransferMatchDTO from a JSON string
incoming_transfer_match_dto_instance = IncomingTransferMatchDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingTransferMatchDTO.to_json())

# convert the object into a dict
incoming_transfer_match_dto_dict = incoming_transfer_match_dto_instance.to_dict()
# create an instance of IncomingTransferMatchDTO from a dict
incoming_transfer_match_dto_from_dict = IncomingTransferMatchDTO.from_dict(incoming_transfer_match_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


