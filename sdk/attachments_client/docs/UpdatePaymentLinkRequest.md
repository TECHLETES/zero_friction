# UpdatePaymentLinkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_link** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.update_payment_link_request import UpdatePaymentLinkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePaymentLinkRequest from a JSON string
update_payment_link_request_instance = UpdatePaymentLinkRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePaymentLinkRequest.to_json())

# convert the object into a dict
update_payment_link_request_dict = update_payment_link_request_instance.to_dict()
# create an instance of UpdatePaymentLinkRequest from a dict
update_payment_link_request_from_dict = UpdatePaymentLinkRequest.from_dict(update_payment_link_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


