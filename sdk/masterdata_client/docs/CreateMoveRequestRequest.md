# CreateMoveRequestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**move_request_type** | [**MoveRequestType**](MoveRequestType.md) |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 
**customer_details** | [**MoveRequestCustomerDetails**](MoveRequestCustomerDetails.md) |  | [optional] 
**external_contract_id** | **str** |  | [optional] 
**external_id** | **str** |  | [optional] 
**service_location_details** | [**MoveRequestServiceLocationDetails**](MoveRequestServiceLocationDetails.md) |  | [optional] 
**measurement_details** | [**List[MoveRequestMeasurementDetails]**](MoveRequestMeasurementDetails.md) |  | [optional] 
**attachment_signatures** | [**List[MoveRequestAttachmentSignatureRequest]**](MoveRequestAttachmentSignatureRequest.md) |  | [optional] 
**custom_message** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.create_move_request_request import CreateMoveRequestRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateMoveRequestRequest from a JSON string
create_move_request_request_instance = CreateMoveRequestRequest.from_json(json)
# print the JSON string representation of the object
print(CreateMoveRequestRequest.to_json())

# convert the object into a dict
create_move_request_request_dict = create_move_request_request_instance.to_dict()
# create an instance of CreateMoveRequestRequest from a dict
create_move_request_request_from_dict = CreateMoveRequestRequest.from_dict(create_move_request_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


