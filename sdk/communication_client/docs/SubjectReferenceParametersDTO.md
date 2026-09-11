# SubjectReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**invoice_num** | **str** |  | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**contract_number** | **str** |  | [optional] 
**payment_plan_number** | **str** |  | [optional] 
**collection_num** | **str** |  | [optional] 
**move_request_type** | [**MoveRequestType**](MoveRequestType.md) |  | [optional] 
**move_request_number** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 
**customer_display_name** | **str** |  | [optional] 
**prepayment_statement_number** | **str** |  | [optional] 

## Example

```python
from communication_client.models.subject_reference_parameters_dto import SubjectReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubjectReferenceParametersDTO from a JSON string
subject_reference_parameters_dto_instance = SubjectReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(SubjectReferenceParametersDTO.to_json())

# convert the object into a dict
subject_reference_parameters_dto_dict = subject_reference_parameters_dto_instance.to_dict()
# create an instance of SubjectReferenceParametersDTO from a dict
subject_reference_parameters_dto_from_dict = SubjectReferenceParametersDTO.from_dict(subject_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


