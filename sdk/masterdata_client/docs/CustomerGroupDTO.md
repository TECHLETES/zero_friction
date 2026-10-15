# CustomerGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount_of_customers** | **int** |  | [optional] 
**settings** | [**CustomerGroupSettingsDTO**](CustomerGroupSettingsDTO.md) |  | [optional] 
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
from masterdata_client.models.customer_group_dto import CustomerGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerGroupDTO from a JSON string
customer_group_dto_instance = CustomerGroupDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerGroupDTO.to_json())

# convert the object into a dict
customer_group_dto_dict = customer_group_dto_instance.to_dict()
# create an instance of CustomerGroupDTO from a dict
customer_group_dto_from_dict = CustomerGroupDTO.from_dict(customer_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


