# UpsertProductBillingItemsRequest


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
from configuration_client.models.upsert_product_billing_items_request import UpsertProductBillingItemsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertProductBillingItemsRequest from a JSON string
upsert_product_billing_items_request_instance = UpsertProductBillingItemsRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertProductBillingItemsRequest.to_json())

# convert the object into a dict
upsert_product_billing_items_request_dict = upsert_product_billing_items_request_instance.to_dict()
# create an instance of UpsertProductBillingItemsRequest from a dict
upsert_product_billing_items_request_from_dict = UpsertProductBillingItemsRequest.from_dict(upsert_product_billing_items_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


