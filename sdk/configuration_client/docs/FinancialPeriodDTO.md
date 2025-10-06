# FinancialPeriodDTO

Represents a financial period with its associated description, code, and external accounting metadata.

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
**start_date** | **datetime** | Start date of the period. | [optional] 
**end_date** | **datetime** | End date of the period. | [optional] 
**period** | **int** | Number of the financial period. | [optional] 
**year** | **int** | Year of the financial period. | [optional] 
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) | Metadata about the external accounting system from which this cost unit was retrieved. | 

## Example

```python
from configuration_client.models.financial_period_dto import FinancialPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FinancialPeriodDTO from a JSON string
financial_period_dto_instance = FinancialPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(FinancialPeriodDTO.to_json())

# convert the object into a dict
financial_period_dto_dict = financial_period_dto_instance.to_dict()
# create an instance of FinancialPeriodDTO from a dict
financial_period_dto_from_dict = FinancialPeriodDTO.from_dict(financial_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


