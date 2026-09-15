# PaymentDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paid** | **bool** |  | [optional] 
**current_payment_status** | [**PaymentProcessStatus**](PaymentProcessStatus.md) |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**collection_details** | [**PaymentCollectionDetailsDTO**](PaymentCollectionDetailsDTO.md) |  | [optional] 
**direct_debit_collection_date** | **datetime** |  | [optional] 
**amount_of_times_retried** | **int** |  | [optional] 
**status_history** | [**List[PaymentStatusHistoryDTO]**](PaymentStatusHistoryDTO.md) |  | [optional] 
**payment_intent** | [**PaymentIntentStateDTO**](PaymentIntentStateDTO.md) |  | [optional] 
**psp_instrument** | [**PspInstrumentSnapshotDTO**](PspInstrumentSnapshotDTO.md) |  | [optional] 

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


