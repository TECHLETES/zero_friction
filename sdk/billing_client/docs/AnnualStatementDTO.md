# AnnualStatementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**annual_statement_number** | **str** |  | [optional]
**year** | **int** |  | [optional]
**version** | **int** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**status** | [**AnnualStatementStatus**](AnnualStatementStatus.md) |  | [optional]
**generation_date** | **datetime** |  | [optional]
**sent** | [**SentStatus**](SentStatus.md) |  | [optional]
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**failure_details** | **str** |  | [optional]
**supports_external_printing** | **bool** |  | [optional]
**attachment_id** | **str** |  | [optional]
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional]
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
