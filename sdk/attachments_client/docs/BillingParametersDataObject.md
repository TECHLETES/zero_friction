# BillingParametersDataObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**skip_approval** | **bool** |  | [optional] 
**skip_payment** | **bool** |  | [optional] 
**enable_invoice_collection** | **bool** |  | [optional] 

## Example

```python
from attachments_client.models.billing_parameters_data_object import BillingParametersDataObject

# TODO update the JSON string below
json = "{}"
# create an instance of BillingParametersDataObject from a JSON string
billing_parameters_data_object_instance = BillingParametersDataObject.from_json(json)
# print the JSON string representation of the object
print(BillingParametersDataObject.to_json())

# convert the object into a dict
billing_parameters_data_object_dict = billing_parameters_data_object_instance.to_dict()
# create an instance of BillingParametersDataObject from a dict
billing_parameters_data_object_from_dict = BillingParametersDataObject.from_dict(billing_parameters_data_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


