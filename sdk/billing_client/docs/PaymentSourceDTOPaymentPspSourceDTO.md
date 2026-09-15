# PaymentSourceDTOPaymentPspSourceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**provider** | [**PaymentProviderType**](PaymentProviderType.md) |  | [optional] 
**payment_provider_account_zfh_id** | **str** |  | [optional] 
**provider_workspace_account_id** | **str** |  | [optional] 
**provider_external_payment_id** | **str** |  | [optional] 
**provider_payment_method_type** | [**PaymentMethodType**](PaymentMethodType.md) |  | [optional] 
**requested_payment_rail** | [**PaymentRail**](PaymentRail.md) |  | [optional] 
**payment_intent_id** | **str** |  | [optional] 
**refund** | [**PaymentPspRefundDTO**](PaymentPspRefundDTO.md) |  | [optional] 
**supports_refund** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.payment_source_dto_payment_psp_source_dto import PaymentSourceDTOPaymentPspSourceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentSourceDTOPaymentPspSourceDTO from a JSON string
payment_source_dto_payment_psp_source_dto_instance = PaymentSourceDTOPaymentPspSourceDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentSourceDTOPaymentPspSourceDTO.to_json())

# convert the object into a dict
payment_source_dto_payment_psp_source_dto_dict = payment_source_dto_payment_psp_source_dto_instance.to_dict()
# create an instance of PaymentSourceDTOPaymentPspSourceDTO from a dict
payment_source_dto_payment_psp_source_dto_from_dict = PaymentSourceDTOPaymentPspSourceDTO.from_dict(payment_source_dto_payment_psp_source_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


