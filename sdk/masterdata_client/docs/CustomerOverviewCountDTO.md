# CustomerOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**supplied** | **int** |  | [optional] 
**unsupplied** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.customer_overview_count_dto import CustomerOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerOverviewCountDTO from a JSON string
customer_overview_count_dto_instance = CustomerOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerOverviewCountDTO.to_json())

# convert the object into a dict
customer_overview_count_dto_dict = customer_overview_count_dto_instance.to_dict()
# create an instance of CustomerOverviewCountDTO from a dict
customer_overview_count_dto_from_dict = CustomerOverviewCountDTO.from_dict(customer_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


