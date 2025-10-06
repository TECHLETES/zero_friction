# SettlementDetailsDTO

Represents settlement details for a transaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**settled_transactions_with_amounts** | [**List[SettledTransactionDTO]**](SettledTransactionDTO.md) | List of transactions that have been settled with their amounts | [optional] 

## Example

```python
from billing_client.models.settlement_details_dto import SettlementDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SettlementDetailsDTO from a JSON string
settlement_details_dto_instance = SettlementDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(SettlementDetailsDTO.to_json())

# convert the object into a dict
settlement_details_dto_dict = settlement_details_dto_instance.to_dict()
# create an instance of SettlementDetailsDTO from a dict
settlement_details_dto_from_dict = SettlementDetailsDTO.from_dict(settlement_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


