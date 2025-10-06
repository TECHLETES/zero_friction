# CreateBillingItemRequest


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
from configuration_client.models.create_billing_item_request import CreateBillingItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateBillingItemRequest from a JSON string
create_billing_item_request_instance = CreateBillingItemRequest.from_json(json)
# print the JSON string representation of the object
print(CreateBillingItemRequest.to_json())

# convert the object into a dict
create_billing_item_request_dict = create_billing_item_request_instance.to_dict()
# create an instance of CreateBillingItemRequest from a dict
create_billing_item_request_from_dict = CreateBillingItemRequest.from_dict(create_billing_item_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


