# PaymentOverviewCountDTO

Provides an overview of payment counts by their status.  This DTO contains aggregated counts of payments in different states.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | The total number of payments. | [optional] 
**reversed** | **int** | The number of reversed payments. | [optional] 

## Example

```python
from billing_client.models.payment_overview_count_dto import PaymentOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentOverviewCountDTO from a JSON string
payment_overview_count_dto_instance = PaymentOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentOverviewCountDTO.to_json())

# convert the object into a dict
payment_overview_count_dto_dict = payment_overview_count_dto_instance.to_dict()
# create an instance of PaymentOverviewCountDTO from a dict
payment_overview_count_dto_from_dict = PaymentOverviewCountDTO.from_dict(payment_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


