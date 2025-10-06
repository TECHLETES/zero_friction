# CreateCostUnitsRequest

Request model for creating new cost units.  Cost units should correspond to entries in an external accounting system  to enable proper data synchronization during billing operations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_units** | [**List[CreateCostUnitRequest]**](CreateCostUnitRequest.md) | List of cost units to create. | [optional] 

## Example

```python
from configuration_client.models.create_cost_units_request import CreateCostUnitsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCostUnitsRequest from a JSON string
create_cost_units_request_instance = CreateCostUnitsRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCostUnitsRequest.to_json())

# convert the object into a dict
create_cost_units_request_dict = create_cost_units_request_instance.to_dict()
# create an instance of CreateCostUnitsRequest from a dict
create_cost_units_request_from_dict = CreateCostUnitsRequest.from_dict(create_cost_units_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


