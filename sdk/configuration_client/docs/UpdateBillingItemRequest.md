# UpdateBillingItemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**person_tax_code_id** | **str** |  | [optional] 
**organisation_tax_code_id** | **str** |  | [optional] 
**tier_calculation_method** | [**TierCalculationMethod**](TierCalculationMethod.md) |  | [optional] 
**calculation_parameters** | [**BillingCalculationTypeParametersDTO**](BillingCalculationTypeParametersDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_billing_item_request import UpdateBillingItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBillingItemRequest from a JSON string
update_billing_item_request_instance = UpdateBillingItemRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBillingItemRequest.to_json())

# convert the object into a dict
update_billing_item_request_dict = update_billing_item_request_instance.to_dict()
# create an instance of UpdateBillingItemRequest from a dict
update_billing_item_request_from_dict = UpdateBillingItemRequest.from_dict(update_billing_item_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


