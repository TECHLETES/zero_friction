# BillingMethodPeriodReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.billing_method_period_reference_dto import BillingMethodPeriodReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingMethodPeriodReferenceDTO from a JSON string
billing_method_period_reference_dto_instance = BillingMethodPeriodReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(BillingMethodPeriodReferenceDTO.to_json())

# convert the object into a dict
billing_method_period_reference_dto_dict = billing_method_period_reference_dto_instance.to_dict()
# create an instance of BillingMethodPeriodReferenceDTO from a dict
billing_method_period_reference_dto_from_dict = BillingMethodPeriodReferenceDTO.from_dict(billing_method_period_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


