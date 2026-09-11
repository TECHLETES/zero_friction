# ManuallyAddPaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  |
**prepayment_account_id** | **str** |  | [optional]
**iban** | **str** |  | [optional]
**amount** | **float** |  |
**payment_date_time** | **datetime** |  |
**company_bank_account_id** | **str** |  |
**payment_reference** | **str** |  | [optional]
**references** | [**List[PaymentEntityReferenceRequest]**](PaymentEntityReferenceRequest.md) |  | [optional]
**is_payment_reference_structured** | **bool** |  | [optional]
**organization_country** | [**CountryCode**](CountryCode.md) |  | [optional]
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional]

## Example

```python
from billing_client.models.manually_add_payment_request import ManuallyAddPaymentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ManuallyAddPaymentRequest from a JSON string
manually_add_payment_request_instance = ManuallyAddPaymentRequest.from_json(json)
# print the JSON string representation of the object
print(ManuallyAddPaymentRequest.to_json())

# convert the object into a dict
manually_add_payment_request_dict = manually_add_payment_request_instance.to_dict()
# create an instance of ManuallyAddPaymentRequest from a dict
manually_add_payment_request_from_dict = ManuallyAddPaymentRequest.from_dict(manually_add_payment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
