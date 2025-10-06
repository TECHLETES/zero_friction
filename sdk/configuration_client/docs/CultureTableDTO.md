# CultureTableDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**default_culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**supported_cultures** | [**List[CultureInfo]**](CultureInfo.md) |  | [optional] 

## Example

```python
from configuration_client.models.culture_table_dto import CultureTableDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CultureTableDTO from a JSON string
culture_table_dto_instance = CultureTableDTO.from_json(json)
# print the JSON string representation of the object
print(CultureTableDTO.to_json())

# convert the object into a dict
culture_table_dto_dict = culture_table_dto_instance.to_dict()
# create an instance of CultureTableDTO from a dict
culture_table_dto_from_dict = CultureTableDTO.from_dict(culture_table_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


