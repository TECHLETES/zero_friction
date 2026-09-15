# CreateCostUnitRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**description** | **str** |  | 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  | 

## Example

```python
from configuration_client.models.create_cost_unit_request import CreateCostUnitRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCostUnitRequest from a JSON string
create_cost_unit_request_instance = CreateCostUnitRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCostUnitRequest.to_json())

# convert the object into a dict
create_cost_unit_request_dict = create_cost_unit_request_instance.to_dict()
# create an instance of CreateCostUnitRequest from a dict
create_cost_unit_request_from_dict = CreateCostUnitRequest.from_dict(create_cost_unit_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


