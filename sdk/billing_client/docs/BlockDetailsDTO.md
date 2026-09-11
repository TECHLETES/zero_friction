# BlockDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blocked** | **bool** |  | [optional]
**blocked_on** | **datetime** |  | [optional]
**blocked_by** | **str** |  | [optional]
**blocked_comment** | **str** |  | [optional]

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
