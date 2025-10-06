# ExternalAccountingMetadataRequest

Metadata to track back the origin of the data.  This is required so that we can push the data back to the source accounting system.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | Name of the source accounting system. | 
**source_entity_id** | **str** | The ID of the entity in the source accounting system. | 

## Example

```python
from configuration_client.models.external_accounting_metadata_request import ExternalAccountingMetadataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalAccountingMetadataRequest from a JSON string
external_accounting_metadata_request_instance = ExternalAccountingMetadataRequest.from_json(json)
# print the JSON string representation of the object
print(ExternalAccountingMetadataRequest.to_json())

# convert the object into a dict
external_accounting_metadata_request_dict = external_accounting_metadata_request_instance.to_dict()
# create an instance of ExternalAccountingMetadataRequest from a dict
external_accounting_metadata_request_from_dict = ExternalAccountingMetadataRequest.from_dict(external_accounting_metadata_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


