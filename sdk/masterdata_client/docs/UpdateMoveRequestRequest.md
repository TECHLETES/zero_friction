# UpdateMoveRequestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**use_property_group_product** | **bool** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**estimations** | [**List[MoveRequestContractEstimationRequest]**](MoveRequestContractEstimationRequest.md) |  | [optional] 
**billing_properties** | [**ContractDetailsBillingPropertiesBaseDTO**](ContractDetailsBillingPropertiesBaseDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_move_request_request import UpdateMoveRequestRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMoveRequestRequest from a JSON string
update_move_request_request_instance = UpdateMoveRequestRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMoveRequestRequest.to_json())

# convert the object into a dict
update_move_request_request_dict = update_move_request_request_instance.to_dict()
# create an instance of UpdateMoveRequestRequest from a dict
update_move_request_request_from_dict = UpdateMoveRequestRequest.from_dict(update_move_request_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


