# PspRefundEligibilityDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_refundable** | **bool** |  | [optional] 
**reason** | [**PspRefundIneligibilityReason**](PspRefundIneligibilityReason.md) |  | [optional] 
**refundable_amount** | **float** |  | [optional] 
**payment_intent_id** | **str** |  | [optional] 
**payment_id** | **str** |  | [optional] 
**provider** | [**PaymentProviderType**](PaymentProviderType.md) |  | [optional] 
**provider_workspace_account_id** | **str** |  | [optional] 
**provider_external_payment_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.psp_refund_eligibility_dto import PspRefundEligibilityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PspRefundEligibilityDTO from a JSON string
psp_refund_eligibility_dto_instance = PspRefundEligibilityDTO.from_json(json)
# print the JSON string representation of the object
print(PspRefundEligibilityDTO.to_json())

# convert the object into a dict
psp_refund_eligibility_dto_dict = psp_refund_eligibility_dto_instance.to_dict()
# create an instance of PspRefundEligibilityDTO from a dict
psp_refund_eligibility_dto_from_dict = PspRefundEligibilityDTO.from_dict(psp_refund_eligibility_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


