# OutgoingMandateExportRecordDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**company_bank_account** | [**CompanyBankAccountReferenceDTO**](CompanyBankAccountReferenceDTO.md) |  | [optional] 
**customer_bank_account** | [**CustomerBankAccountReferenceDTO**](CustomerBankAccountReferenceDTO.md) |  | [optional] 
**mandate_number** | **str** |  | [optional] 
**mandate_signed_date_time** | **datetime** |  | [optional] 
**record_type** | [**OutgoingMandateExportType**](OutgoingMandateExportType.md) |  | [optional] 
**status** | [**OutgoingMandateExportStatus**](OutgoingMandateExportStatus.md) |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**sent_at** | **datetime** |  | [optional] 
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
from billing_client.models.outgoing_mandate_export_record_dto import OutgoingMandateExportRecordDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMandateExportRecordDTO from a JSON string
outgoing_mandate_export_record_dto_instance = OutgoingMandateExportRecordDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMandateExportRecordDTO.to_json())

# convert the object into a dict
outgoing_mandate_export_record_dto_dict = outgoing_mandate_export_record_dto_instance.to_dict()
# create an instance of OutgoingMandateExportRecordDTO from a dict
outgoing_mandate_export_record_dto_from_dict = OutgoingMandateExportRecordDTO.from_dict(outgoing_mandate_export_record_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


