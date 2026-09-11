# UpdateEInvoicingSettingsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_number** | **str** |  | [optional] 
**preferred_peppol_scheme** | [**PeppolScheme**](PeppolScheme.md) |  | [optional] 
**custom_peppol_identifier** | **str** |  | 

## Example

```python
from masterdata_client.models.update_e_invoicing_settings_request import UpdateEInvoicingSettingsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEInvoicingSettingsRequest from a JSON string
update_e_invoicing_settings_request_instance = UpdateEInvoicingSettingsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEInvoicingSettingsRequest.to_json())

# convert the object into a dict
update_e_invoicing_settings_request_dict = update_e_invoicing_settings_request_instance.to_dict()
# create an instance of UpdateEInvoicingSettingsRequest from a dict
update_e_invoicing_settings_request_from_dict = UpdateEInvoicingSettingsRequest.from_dict(update_e_invoicing_settings_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


