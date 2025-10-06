# EstimatedBillingCompletenessDTO

Represents an estimated billing completeness status

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
**contract_id** | **str** | Unique identifier of the contract | [optional] 
**contract_num** | **str** | Contract number | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor | [optional] 
**billing_relation_id** | **str** | Unique identifier of the billing relation | [optional] 
**period_start_date_time** | **datetime** | Start date and time of the billing period | [optional] 
**period_end_date_time** | **datetime** | End date and time of the billing period | [optional] 
**status** | [**BillingCompletenessStatus**](BillingCompletenessStatus.md) | Current status of billing completeness | [optional] 
**input_missing_details** | [**InputMissingDetailsDTO**](InputMissingDetailsDTO.md) | Details about any missing input data | [optional] 
**has_corrections** | **bool** | Indicates if there are any corrections made to the billing data | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) | Type of invoice being generated | [optional] 
**blocked** | **bool** | Indicates if the billing is currently blocked | [optional] 
**required_quantities_grouped** | [**RequiredQuantityGroupedDTO**](RequiredQuantityGroupedDTO.md) | Grouped required quantities for billing | [optional] 
**advance_periods** | [**List[AdvancePeriodDTO]**](AdvancePeriodDTO.md) | List of advance payment periods | [optional] 
**expect_advances_to_be_imported_periodically** | **bool** | Indicates if advances are expected to be imported periodically | [optional] 
**cost_allocation_billable** | **bool** | Indicates if cost allocation is billable | [optional] 
**invoicing_upfront** | **bool** | Indicates if invoicing is done upfront | [optional] 
**invoicing_checkpoint_date_time** | **datetime** | Date and time of the last invoicing checkpoint | [optional] 
**product_id** | **str** | Unique identifier of the product | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this billing | [optional] 
**original_billing_completeness_id** | **str** | ID of the original billing completeness entry | [optional] 
**estimation_messages_requested** | **List[str]** | Collection of reference IDs for estimation messages | [optional] 
**validation_errors** | [**List[ErrorCodeMessage]**](ErrorCodeMessage.md) | List of validation errors encountered during estimation | [optional] 

## Example

```python
from billing_client.models.estimated_billing_completeness_dto import EstimatedBillingCompletenessDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedBillingCompletenessDTO from a JSON string
estimated_billing_completeness_dto_instance = EstimatedBillingCompletenessDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedBillingCompletenessDTO.to_json())

# convert the object into a dict
estimated_billing_completeness_dto_dict = estimated_billing_completeness_dto_instance.to_dict()
# create an instance of EstimatedBillingCompletenessDTO from a dict
estimated_billing_completeness_dto_from_dict = EstimatedBillingCompletenessDTO.from_dict(estimated_billing_completeness_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


