# BillingItemDetailsDTO

Represents detailed information about a billing item.  Contains information about deviating tariffs and any execution errors.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | The unique identifier of the billing item. | [optional] 
**deviating_tariffs** | [**List[CalculatedTariffDTO]**](CalculatedTariffDTO.md) | List of tariffs that deviate from the standard calculation. | [optional] 
**tariff_execution_errors** | [**List[FormulaFunctionExceptionDTO]**](FormulaFunctionExceptionDTO.md) | List of errors that occurred during tariff calculation execution. | [optional] 

## Example

```python
from billing_client.models.billing_item_details_dto import BillingItemDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingItemDetailsDTO from a JSON string
billing_item_details_dto_instance = BillingItemDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BillingItemDetailsDTO.to_json())

# convert the object into a dict
billing_item_details_dto_dict = billing_item_details_dto_instance.to_dict()
# create an instance of BillingItemDetailsDTO from a dict
billing_item_details_dto_from_dict = BillingItemDetailsDTO.from_dict(billing_item_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


