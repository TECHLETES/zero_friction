# BillingItemReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** |  | [optional] 
**billing_item_name** | **str** |  | [optional] 

## Example

```python
from billing_client.models.billing_item_reference import BillingItemReference

# TODO update the JSON string below
json = "{}"
# create an instance of BillingItemReference from a JSON string
billing_item_reference_instance = BillingItemReference.from_json(json)
# print the JSON string representation of the object
print(BillingItemReference.to_json())

# convert the object into a dict
billing_item_reference_dict = billing_item_reference_instance.to_dict()
# create an instance of BillingItemReference from a dict
billing_item_reference_from_dict = BillingItemReference.from_dict(billing_item_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


