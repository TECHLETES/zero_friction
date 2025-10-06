# ProductBillingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** |  | [optional] 
**order** | **int** |  | [optional] 
**periodicity_parameters** | [**ProductItemPeriodicityParametersDTO**](ProductItemPeriodicityParametersDTO.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from configuration_client.models.product_billing_item_dto import ProductBillingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductBillingItemDTO from a JSON string
product_billing_item_dto_instance = ProductBillingItemDTO.from_json(json)
# print the JSON string representation of the object
print(ProductBillingItemDTO.to_json())

# convert the object into a dict
product_billing_item_dto_dict = product_billing_item_dto_instance.to_dict()
# create an instance of ProductBillingItemDTO from a dict
product_billing_item_dto_from_dict = ProductBillingItemDTO.from_dict(product_billing_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


