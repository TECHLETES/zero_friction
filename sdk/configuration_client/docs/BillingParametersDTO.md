# BillingParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**skip_approval** | **bool** |  | [optional] 
**skip_payment** | **bool** |  | [optional] 
**enable_ubl** | **bool** |  | [optional] 
**disable_automatic_billing_processes** | **bool** |  | [optional] 
**enable_invoice_collection** | **bool** |  | [optional] 
**do_not_credit_advances_when_unpaid** | **bool** |  | [optional] 
**collection_border_invoice_created_date_time** | **datetime** |  | [optional] 
**collection_write_off_handling** | [**WriteOffHandlingType**](WriteOffHandlingType.md) |  | [optional] 
**group_invoice_collection_by_customer** | **bool** |  | [optional] 
**days_after_invoice_checkpoint_date_to_create_invoice** | **int** |  | [optional] 
**days_before_advance_start_date_to_create_advance** | **int** |  | [optional] 
**advance_amount_lower_threshold** | **float** |  | [optional] 
**advance_calculation_parameters** | [**AdvanceCalculationParametersDTO**](AdvanceCalculationParametersDTO.md) |  | [optional] 
**default_tax_code_for_person_advances** | **str** |  | [optional] 
**default_tax_code_for_organisation_advances** | **str** |  | [optional] 
**prepayment_parameters** | [**PrepaymentParametersDTO**](PrepaymentParametersDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.billing_parameters_dto import BillingParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingParametersDTO from a JSON string
billing_parameters_dto_instance = BillingParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BillingParametersDTO.to_json())

# convert the object into a dict
billing_parameters_dto_dict = billing_parameters_dto_instance.to_dict()
# create an instance of BillingParametersDTO from a dict
billing_parameters_dto_from_dict = BillingParametersDTO.from_dict(billing_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


