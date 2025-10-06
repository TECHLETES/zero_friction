# BlockContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comment** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.block_contract_request import BlockContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BlockContractRequest from a JSON string
block_contract_request_instance = BlockContractRequest.from_json(json)
# print the JSON string representation of the object
print(BlockContractRequest.to_json())

# convert the object into a dict
block_contract_request_dict = block_contract_request_instance.to_dict()
# create an instance of BlockContractRequest from a dict
block_contract_request_from_dict = BlockContractRequest.from_dict(block_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


