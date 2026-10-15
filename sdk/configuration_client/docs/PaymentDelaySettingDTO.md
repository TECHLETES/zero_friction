# PaymentDelaySettingDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**payment_delay** | [**PaymentDelay**](PaymentDelay.md) |  | [optional] 
**value** | **int** |  | [optional] 
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
from configuration_client.models.payment_delay_setting_dto import PaymentDelaySettingDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentDelaySettingDTO from a JSON string
payment_delay_setting_dto_instance = PaymentDelaySettingDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentDelaySettingDTO.to_json())

# convert the object into a dict
payment_delay_setting_dto_dict = payment_delay_setting_dto_instance.to_dict()
# create an instance of PaymentDelaySettingDTO from a dict
payment_delay_setting_dto_from_dict = PaymentDelaySettingDTO.from_dict(payment_delay_setting_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


