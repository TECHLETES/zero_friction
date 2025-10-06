# CreateCostUnitRequest

Request model for creating a new cost unit.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** | The code of the cost unit. | [optional] 
**description** | **str** | Description of the cost unit itself.  Currently, we only support the description in one language so this field is not localized. | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) | Metadata to track back the origin of the data.  This is required so that we can push the data back to the source accounting system. | [optional] 

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


