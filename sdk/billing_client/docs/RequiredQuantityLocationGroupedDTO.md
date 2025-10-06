# RequiredQuantityLocationGroupedDTO

Represents required quantities grouped by location

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** | Unique identifier of the service location | [optional] 
**required_quantities** | [**List[RequiredQuantityDTO]**](RequiredQuantityDTO.md) | List of required quantities for this location | [optional] 

## Example

```python
from billing_client.models.required_quantity_location_grouped_dto import RequiredQuantityLocationGroupedDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityLocationGroupedDTO from a JSON string
required_quantity_location_grouped_dto_instance = RequiredQuantityLocationGroupedDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityLocationGroupedDTO.to_json())

# convert the object into a dict
required_quantity_location_grouped_dto_dict = required_quantity_location_grouped_dto_instance.to_dict()
# create an instance of RequiredQuantityLocationGroupedDTO from a dict
required_quantity_location_grouped_dto_from_dict = RequiredQuantityLocationGroupedDTO.from_dict(required_quantity_location_grouped_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


