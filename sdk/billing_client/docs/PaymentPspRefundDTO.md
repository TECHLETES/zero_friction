# PaymentPspRefundDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**psp_refund_status** | [**PspRefundStatus**](PspRefundStatus.md) |  | [optional]
**refunded_amount** | **float** |  | [optional]
**refunded_at** | **datetime** |  | [optional]
**provider_external_refund_id** | **str** |  | [optional]

## Example

```python
from billing_client.models.payment_psp_refund_dto import PaymentPspRefundDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPspRefundDTO from a JSON string
payment_psp_refund_dto_instance = PaymentPspRefundDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPspRefundDTO.to_json())

# convert the object into a dict
payment_psp_refund_dto_dict = payment_psp_refund_dto_instance.to_dict()
# create an instance of PaymentPspRefundDTO from a dict
payment_psp_refund_dto_from_dict = PaymentPspRefundDTO.from_dict(payment_psp_refund_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
