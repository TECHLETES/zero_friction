# ProductPeriodReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**product_name** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.product_period_reference_dto import ProductPeriodReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductPeriodReferenceDTO from a JSON string
product_period_reference_dto_instance = ProductPeriodReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(ProductPeriodReferenceDTO.to_json())

# convert the object into a dict
product_period_reference_dto_dict = product_period_reference_dto_instance.to_dict()
# create an instance of ProductPeriodReferenceDTO from a dict
product_period_reference_dto_from_dict = ProductPeriodReferenceDTO.from_dict(product_period_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


