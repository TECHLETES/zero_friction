# CultureTableDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional]
**supported_cultures** | **List[str]** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
