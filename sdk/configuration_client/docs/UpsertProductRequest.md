# UpsertProductRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**billing_items** | [**List[UpsertProductBillingItemsRequest]**](UpsertProductBillingItemsRequest.md) |  | [optional] 
**attachments** | [**List[UpsertProductAttachmentRequest]**](UpsertProductAttachmentRequest.md) |  | [optional] 
**invoice_upfront** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.upsert_product_request import UpsertProductRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertProductRequest from a JSON string
upsert_product_request_instance = UpsertProductRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertProductRequest.to_json())

# convert the object into a dict
upsert_product_request_dict = upsert_product_request_instance.to_dict()
# create an instance of UpsertProductRequest from a dict
upsert_product_request_from_dict = UpsertProductRequest.from_dict(upsert_product_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


