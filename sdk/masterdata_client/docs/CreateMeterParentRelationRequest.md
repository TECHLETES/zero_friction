# CreateMeterParentRelationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_meter_id** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.create_meter_parent_relation_request import CreateMeterParentRelationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateMeterParentRelationRequest from a JSON string
create_meter_parent_relation_request_instance = CreateMeterParentRelationRequest.from_json(json)
# print the JSON string representation of the object
print(CreateMeterParentRelationRequest.to_json())

# convert the object into a dict
create_meter_parent_relation_request_dict = create_meter_parent_relation_request_instance.to_dict()
# create an instance of CreateMeterParentRelationRequest from a dict
create_meter_parent_relation_request_from_dict = CreateMeterParentRelationRequest.from_dict(create_meter_parent_relation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


