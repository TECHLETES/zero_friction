# PaymentTermsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**amount** | **int** |  | [optional]
**payment_terms_frequency** | [**PaymentTermsFrequency**](PaymentTermsFrequency.md) |  | [optional]
**deleted** | **bool** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.payment_terms_dto import PaymentTermsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentTermsDTO from a JSON string
payment_terms_dto_instance = PaymentTermsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentTermsDTO.to_json())

# convert the object into a dict
payment_terms_dto_dict = payment_terms_dto_instance.to_dict()
# create an instance of PaymentTermsDTO from a dict
payment_terms_dto_from_dict = PaymentTermsDTO.from_dict(payment_terms_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
