# CollectionCaseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_num** | **str** |  | [optional] 
**sequence_num** | **int** |  | [optional] 
**workflow_id** | **str** |  | [optional] 
**workflow_name** | **str** |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**manual_intervention_required** | **bool** |  | [optional] 
**status** | [**CollectionFlowStatus**](CollectionFlowStatus.md) |  | [optional] 
**steps** | [**List[CollectionCaseStepDTO]**](CollectionCaseStepDTO.md) |  | [optional] 
**last_step** | [**CollectionCaseStepDTO**](CollectionCaseStepDTO.md) |  | [optional] 
**next_step** | [**CollectionCaseStepDTO**](CollectionCaseStepDTO.md) |  | [optional] 
**next_action_due** | **datetime** |  | [optional] 
**referenced_transactions** | **List[str]** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**total_open_amount_incl_vat** | **float** |  | [optional] 
**payment_plan_details** | [**PaymentPlanDetailsDTO**](PaymentPlanDetailsDTO.md) |  | [optional] 
**has_active_payment_plan** | **bool** |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional] 
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
from billing_client.models.collection_case_dto import CollectionCaseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseDTO from a JSON string
collection_case_dto_instance = CollectionCaseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseDTO.to_json())

# convert the object into a dict
collection_case_dto_dict = collection_case_dto_instance.to_dict()
# create an instance of CollectionCaseDTO from a dict
collection_case_dto_from_dict = CollectionCaseDTO.from_dict(collection_case_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


