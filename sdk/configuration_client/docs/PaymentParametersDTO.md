# PaymentParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retry_parameters** | [**List[PaymentRetryParameterDTO]**](PaymentRetryParameterDTO.md) |  | [optional]
**block_automatic_settlement** | **bool** |  | [optional]
**block_automatic_refunding** | **bool** |  | [optional]
**refund_payment_delay_in_days** | **int** |  | [optional]
**payment_terms_id** | **str** |  | [optional]
**only_use_invoice_number_in_payment_references** | **bool** |  | [optional]
**default_collection_flow_id** | **str** |  | [optional]
**default_collection_delay** | [**PaymentDelay**](PaymentDelay.md) |  | [optional]
**default_collection_delay_value** | **int** |  | [optional]
**allow_resident_to_choose_collection_day** | **bool** |  | [optional]
**allow_customer_collection_day_override** | **bool** |  | [optional]
**selectable_collection_days** | **List[int]** |  | [optional]
**matching_rules** | [**List[BaseBankStatementMatchingRuleDTO]**](BaseBankStatementMatchingRuleDTO.md) |  | [optional]
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
from configuration_client.models.payment_parameters_dto import PaymentParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentParametersDTO from a JSON string
payment_parameters_dto_instance = PaymentParametersDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentParametersDTO.to_json())

# convert the object into a dict
payment_parameters_dto_dict = payment_parameters_dto_instance.to_dict()
# create an instance of PaymentParametersDTO from a dict
payment_parameters_dto_from_dict = PaymentParametersDTO.from_dict(payment_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
