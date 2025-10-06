# BlockDetailsDTO

Represents details about the blocking status of a billing relation.  This DTO contains information about when and why a billing relation was blocked.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blocked** | **bool** | Indicates whether the billing relation is currently blocked. | [optional] 
**blocked_on** | **datetime** | The date and time when the billing relation was blocked. | [optional] 
**blocked_by** | **str** | The identifier of the user who blocked the billing relation. | [optional] 
**blocked_comment** | **str** | Comments explaining why the billing relation was blocked. | [optional] 

## Example

```python
from billing_client.models.block_details_dto import BlockDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BlockDetailsDTO from a JSON string
block_details_dto_instance = BlockDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BlockDetailsDTO.to_json())

# convert the object into a dict
block_details_dto_dict = block_details_dto_instance.to_dict()
# create an instance of BlockDetailsDTO from a dict
block_details_dto_from_dict = BlockDetailsDTO.from_dict(block_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


