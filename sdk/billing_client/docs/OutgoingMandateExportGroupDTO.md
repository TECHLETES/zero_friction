# OutgoingMandateExportGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification** | **str** |  | [optional] 
**status** | [**OutgoingMandateExportStatus**](OutgoingMandateExportStatus.md) |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**sent_at** | **datetime** |  | [optional] 
**company_bank_account** | [**CompanyBankAccountReferenceDTO**](CompanyBankAccountReferenceDTO.md) |  | [optional] 
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
from billing_client.models.outgoing_mandate_export_group_dto import OutgoingMandateExportGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMandateExportGroupDTO from a JSON string
outgoing_mandate_export_group_dto_instance = OutgoingMandateExportGroupDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMandateExportGroupDTO.to_json())

# convert the object into a dict
outgoing_mandate_export_group_dto_dict = outgoing_mandate_export_group_dto_instance.to_dict()
# create an instance of OutgoingMandateExportGroupDTO from a dict
outgoing_mandate_export_group_dto_from_dict = OutgoingMandateExportGroupDTO.from_dict(outgoing_mandate_export_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


