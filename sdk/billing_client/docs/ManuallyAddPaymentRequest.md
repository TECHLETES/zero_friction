# ManuallyAddPaymentRequest

Represents a request to manually add a payment to the system.  This DTO is used to record payments that are not automatically processed through the banking system.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | The ID of the customer who made the payment. | [optional] 
**iban** | **str** | The International Bank Account Number (IBAN) from which the payment was made. | [optional] 
**amount** | **float** | The amount of the payment. | [optional] 
**payment_date_time** | **datetime** | The date and time when the payment was made. | [optional] 
**company_bank_account_id** | **str** | The ID of the company bank account that received the payment. | [optional] 
**payment_reference** | **str** | The payment reference text associated with the payment. | [optional] 
**references** | [**List[PaymentEntityReferenceRequest]**](PaymentEntityReferenceRequest.md) | A list of references linking this payment to other entities in the system. | [optional] 
**is_payment_reference_structured** | **bool** | Indicates whether the payment reference follows a structured format. | [optional] 
**organization_country** | [**CountryCode**](CountryCode.md) | The country code of the organization processing the payment.  Used for validating structured payment references. | [optional] 

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


