# BillingCompletenessDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional]
**contract_num** | **str** |  | [optional]
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional]
**billing_relation_id** | **str** |  | [optional]
**period_start_date_time** | **datetime** |  | [optional]
**period_end_date_time** | **datetime** |  | [optional]
**status** | [**BillingCompletenessStatus**](BillingCompletenessStatus.md) |  | [optional]
**input_missing_details** | [**InputMissingDetailsDTO**](InputMissingDetailsDTO.md) |  | [optional]
**has_corrections** | **bool** |  | [optional]
**billing_method** | [**ContractBillingMethod**](ContractBillingMethod.md) |  | [optional]
**statement_type** | [**StatementType**](StatementType.md) |  | [optional]
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional]
**blocked** | **bool** |  | [optional]
**required_quantities_grouped** | [**RequiredQuantityGroupedDTO**](RequiredQuantityGroupedDTO.md) |  | [optional]
**advance_periods** | [**List[AdvancePeriodDTO]**](AdvancePeriodDTO.md) |  | [optional]
**expect_advances_to_be_imported_periodically** | **bool** |  | [optional]
**invoicing_upfront** | **bool** |  | [optional]
**invoicing_checkpoint_date_time** | **datetime** |  | [optional]
**product_id** | **str** |  | [optional]
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional]
**get_detail_navigation_id** | **str** |  | [optional]
**get_detail_navigation_type** | **object** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from billing_client.models.billing_completeness_dto import BillingCompletenessDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCompletenessDTO from a JSON string
billing_completeness_dto_instance = BillingCompletenessDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCompletenessDTO.to_json())

# convert the object into a dict
billing_completeness_dto_dict = billing_completeness_dto_instance.to_dict()
# create an instance of BillingCompletenessDTO from a dict
billing_completeness_dto_from_dict = BillingCompletenessDTO.from_dict(billing_completeness_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
