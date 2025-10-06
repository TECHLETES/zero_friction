# PaymentDetailsDTO

Represents payment details for an invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paid** | **bool** | Indicates if the invoice has been paid | [optional] 
**current_payment_status** | [**PaymentProcessStatus**](PaymentProcessStatus.md) | Current status of the payment process | [optional] 
**payment_reference** | **str** | Payment reference number | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) | Method of payment | [optional] 
**direct_debit_collection_date** | **datetime** | Date when direct debit will be collected | [optional] 
**amount_of_times_retried** | **int** | Number of times payment has been retried | [optional] 
**status_history** | [**List[PaymentStatusHistoryDTO]**](PaymentStatusHistoryDTO.md) | History of payment status changes | [optional] 

## Example

```python
from billing_client.models.payment_details_dto import PaymentDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentDetailsDTO from a JSON string
payment_details_dto_instance = PaymentDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentDetailsDTO.to_json())

# convert the object into a dict
payment_details_dto_dict = payment_details_dto_instance.to_dict()
# create an instance of PaymentDetailsDTO from a dict
payment_details_dto_from_dict = PaymentDetailsDTO.from_dict(payment_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


