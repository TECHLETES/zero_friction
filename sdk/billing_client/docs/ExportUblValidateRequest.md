# ExportUblValidateRequest

Represents a request to validate invoices in UBL format.  This DTO is used to validate multiple invoices against UBL (Universal Business Language) format specifications.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_ids** | **List[str]** | List of invoice IDs to be validated against UBL format specifications. | [optional] 

## Example

```python
from billing_client.models.export_ubl_validate_request import ExportUblValidateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportUblValidateRequest from a JSON string
export_ubl_validate_request_instance = ExportUblValidateRequest.from_json(json)
# print the JSON string representation of the object
print(ExportUblValidateRequest.to_json())

# convert the object into a dict
export_ubl_validate_request_dict = export_ubl_validate_request_instance.to_dict()
# create an instance of ExportUblValidateRequest from a dict
export_ubl_validate_request_from_dict = ExportUblValidateRequest.from_dict(export_ubl_validate_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


