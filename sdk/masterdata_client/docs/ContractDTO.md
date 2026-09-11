# ContractDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_number** | **str** |  | [optional]
**contractor** | [**ContractorDTO**](ContractorDTO.md) |  | [optional]
**supply_start_date** | **datetime** |  | [optional]
**supply_end_date** | **datetime** |  | [optional]
**service_locations** | [**List[ContractServiceLocationDTO]**](ContractServiceLocationDTO.md) |  | [optional]
**status_history** | [**List[ContractStatusHistoryDTO]**](ContractStatusHistoryDTO.md) |  | [optional]
**current_contract_status** | [**ContractStatus**](ContractStatus.md) |  | [optional]
**billing_details** | [**BillingDetailsDTO**](BillingDetailsDTO.md) |  | [optional]
**external_contract_reference** | **str** |  | [optional]
**payment_terms_id** | **str** |  | [optional]
**blocked_for_deletion** | **bool** |  | [optional]
**expect_advances_to_be_imported_periodically** | **bool** |  | [optional]
**use_property_group_product** | **bool** |  | [optional]
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional]
**attachment_signatures** | [**List[AttachmentSignature]**](AttachmentSignature.md) |  | [optional]
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional]
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
from masterdata_client.models.contract_dto import ContractDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractDTO from a JSON string
contract_dto_instance = ContractDTO.from_json(json)
# print the JSON string representation of the object
print(ContractDTO.to_json())

# convert the object into a dict
contract_dto_dict = contract_dto_instance.to_dict()
# create an instance of ContractDTO from a dict
contract_dto_from_dict = ContractDTO.from_dict(contract_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
