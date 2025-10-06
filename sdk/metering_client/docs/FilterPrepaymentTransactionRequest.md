# FilterPrepaymentTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_id** | **str** |  | [optional] 
**channel_identifiers** | **List[str]** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**origin** | [**PrepaymentTransactionOrigin**](PrepaymentTransactionOrigin.md) |  | [optional] 
**type** | [**PrepaymentTransactionType**](PrepaymentTransactionType.md) |  | [optional] 
**limit** | **int** |  | [optional] 
**order_by** | **str** |  | [optional] 

## Example

```python
from metering_client.models.filter_prepayment_transaction_request import FilterPrepaymentTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FilterPrepaymentTransactionRequest from a JSON string
filter_prepayment_transaction_request_instance = FilterPrepaymentTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(FilterPrepaymentTransactionRequest.to_json())

# convert the object into a dict
filter_prepayment_transaction_request_dict = filter_prepayment_transaction_request_instance.to_dict()
# create an instance of FilterPrepaymentTransactionRequest from a dict
filter_prepayment_transaction_request_from_dict = FilterPrepaymentTransactionRequest.from_dict(filter_prepayment_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


