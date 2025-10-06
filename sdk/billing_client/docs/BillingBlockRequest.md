# BillingBlockRequest

Represents a request to block a billing relation.  This DTO is used to temporarily prevent billing operations on a billing relation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comment** | **str** | A comment explaining the reason for blocking the billing relation. | [optional] 

## Example

```python
from billing_client.models.billing_block_request import BillingBlockRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillingBlockRequest from a JSON string
billing_block_request_instance = BillingBlockRequest.from_json(json)
# print the JSON string representation of the object
print(BillingBlockRequest.to_json())

# convert the object into a dict
billing_block_request_dict = billing_block_request_instance.to_dict()
# create an instance of BillingBlockRequest from a dict
billing_block_request_from_dict = BillingBlockRequest.from_dict(billing_block_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


