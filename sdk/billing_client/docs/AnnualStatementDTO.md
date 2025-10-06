# AnnualStatementDTO

Represents an annual statement document that provides a yearly summary of billing information.  This DTO contains all the necessary information about the annual statement, including its status,  generation details, and associated entities.

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
**annual_statement_number** | **str** | The unique identifier number of the annual statement. | [optional] 
**year** | **int** | The year for which the annual statement is generated. | [optional] 
**version** | **int** | The version number of the annual statement. | [optional] 
**start_date_time** | **datetime** | The start date and time of the period covered by the annual statement. | [optional] 
**end_date_time** | **datetime** | The end date and time of the period covered by the annual statement. | [optional] 
**status** | [**AnnualStatementStatus**](AnnualStatementStatus.md) | The current status of the annual statement. | [optional] 
**generation_date** | **datetime** | The date and time when the annual statement was generated. | [optional] 
**sent** | [**SentStatus**](SentStatus.md) | The status indicating whether the annual statement has been sent. | [optional] 
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | The localized error code if the annual statement generation failed. | [optional] 
**failure_details** | **str** | Detailed information about any failure that occurred during generation. | [optional] 
**supports_external_printing** | **bool** | Indicates whether the annual statement can be printed externally. | [optional] 
**attachment_id** | **str** | The unique identifier of the attached document. | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor associated with the annual statement. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this annual statement. | [optional] 

## Example

```python
from billing_client.models.annual_statement_dto import AnnualStatementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualStatementDTO from a JSON string
annual_statement_dto_instance = AnnualStatementDTO.from_json(json)
# print the JSON string representation of the object
print(AnnualStatementDTO.to_json())

# convert the object into a dict
annual_statement_dto_dict = annual_statement_dto_instance.to_dict()
# create an instance of AnnualStatementDTO from a dict
annual_statement_dto_from_dict = AnnualStatementDTO.from_dict(annual_statement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


