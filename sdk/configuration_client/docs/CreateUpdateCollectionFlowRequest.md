# CreateUpdateCollectionFlowRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**days_after_invoice_due** | **int** |  | [optional] 
**step_ids** | **List[str]** |  | [optional] 

## Example

```python
from configuration_client.models.create_update_collection_flow_request import CreateUpdateCollectionFlowRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateUpdateCollectionFlowRequest from a JSON string
create_update_collection_flow_request_instance = CreateUpdateCollectionFlowRequest.from_json(json)
# print the JSON string representation of the object
print(CreateUpdateCollectionFlowRequest.to_json())

# convert the object into a dict
create_update_collection_flow_request_dict = create_update_collection_flow_request_instance.to_dict()
# create an instance of CreateUpdateCollectionFlowRequest from a dict
create_update_collection_flow_request_from_dict = CreateUpdateCollectionFlowRequest.from_dict(create_update_collection_flow_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


