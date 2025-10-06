# CollectionCaseDTO

Represents a collection case for managing debt collection processes.  This DTO contains information about the collection workflow, steps, and associated entities.

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
**collection_num** | **str** | The unique collection case number. | [optional] 
**sequence_num** | **int** | The sequence number of the collection case. | [optional] 
**workflow_id** | **str** | The unique identifier of the workflow. | [optional] 
**workflow_name** | **str** | The name of the workflow. | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor associated with this collection case. | [optional] 
**manual_intervention_required** | **bool** | Indicates whether manual intervention is required for this case. | [optional] 
**status** | [**CollectionFlowStatus**](CollectionFlowStatus.md) | The current status of the collection flow. | [optional] 
**steps** | [**List[CollectionCaseStepDTO]**](CollectionCaseStepDTO.md) | List of steps in the collection case workflow. | [optional] 
**last_step** | [**CollectionCaseStepDTO**](CollectionCaseStepDTO.md) | Gets the most recently executed step in the collection case. | [optional] [readonly] 
**next_step** | [**CollectionCaseStepDTO**](CollectionCaseStepDTO.md) | Gets the next pending step to be executed in the collection case. | [optional] [readonly] 
**next_action_due** | **datetime** | Gets the date and time when the next action is due. | [optional] [readonly] 
**referenced_transactions** | **List[str]** | List of transaction IDs referenced in this collection case. | [optional] 
**payment_reference** | **str** | The payment reference number for this collection case. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this collection case. | [optional] 
**total_open_amount_incl_vat** | **float** | The total open amount including VAT for this collection case. | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) | List of custom properties associated with this collection case. | [optional] 

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


