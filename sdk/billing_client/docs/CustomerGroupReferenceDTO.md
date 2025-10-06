# CustomerGroupReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from billing_client.models.customer_group_reference_dto import CustomerGroupReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerGroupReferenceDTO from a JSON string
customer_group_reference_dto_instance = CustomerGroupReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerGroupReferenceDTO.to_json())

# convert the object into a dict
customer_group_reference_dto_dict = customer_group_reference_dto_instance.to_dict()
# create an instance of CustomerGroupReferenceDTO from a dict
customer_group_reference_dto_from_dict = CustomerGroupReferenceDTO.from_dict(customer_group_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


