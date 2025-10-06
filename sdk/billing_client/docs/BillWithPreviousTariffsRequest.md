# BillWithPreviousTariffsRequest

Represents a request to bill using previous tariffs.  This DTO is used to generate bills using historical tariff rates instead of current ones.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_relation_ids** | **List[str]** | List of billing relation IDs for which to generate bills using previous tariffs. | [optional] 

## Example

```python
from billing_client.models.bill_with_previous_tariffs_request import BillWithPreviousTariffsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BillWithPreviousTariffsRequest from a JSON string
bill_with_previous_tariffs_request_instance = BillWithPreviousTariffsRequest.from_json(json)
# print the JSON string representation of the object
print(BillWithPreviousTariffsRequest.to_json())

# convert the object into a dict
bill_with_previous_tariffs_request_dict = bill_with_previous_tariffs_request_instance.to_dict()
# create an instance of BillWithPreviousTariffsRequest from a dict
bill_with_previous_tariffs_request_from_dict = BillWithPreviousTariffsRequest.from_dict(bill_with_previous_tariffs_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


