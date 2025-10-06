# CreatePrepaymentTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prepayment_account_id** | **str** |  | [optional] 
**processed_date_time** | **datetime** |  | [optional] 
**origin** | [**PrepaymentTransactionOrigin**](PrepaymentTransactionOrigin.md) |  | [optional] 
**type** | [**PrepaymentTransactionType**](PrepaymentTransactionType.md) |  | [optional] 
**status** | [**PrepaymentTransactionStatus**](PrepaymentTransactionStatus.md) |  | [optional] 
**amount** | **float** |  | [optional] 

## Example

```python
from metering_client.models.create_prepayment_transaction_request import CreatePrepaymentTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePrepaymentTransactionRequest from a JSON string
create_prepayment_transaction_request_instance = CreatePrepaymentTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePrepaymentTransactionRequest.to_json())

# convert the object into a dict
create_prepayment_transaction_request_dict = create_prepayment_transaction_request_instance.to_dict()
# create an instance of CreatePrepaymentTransactionRequest from a dict
create_prepayment_transaction_request_from_dict = CreatePrepaymentTransactionRequest.from_dict(create_prepayment_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


