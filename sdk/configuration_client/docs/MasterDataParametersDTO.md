# MasterDataParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**excluded_utility_types** | [**List[UtilityType]**](UtilityType.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.master_data_parameters_dto import MasterDataParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MasterDataParametersDTO from a JSON string
master_data_parameters_dto_instance = MasterDataParametersDTO.from_json(json)
# print the JSON string representation of the object
print(MasterDataParametersDTO.to_json())

# convert the object into a dict
master_data_parameters_dto_dict = master_data_parameters_dto_instance.to_dict()
# create an instance of MasterDataParametersDTO from a dict
master_data_parameters_dto_from_dict = MasterDataParametersDTO.from_dict(master_data_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
