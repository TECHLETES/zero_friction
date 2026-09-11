# CreateContractRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contractor_id** | **str** |  | [optional]
**contract_number** | **str** |  | [optional]
**supply_start_date** | **datetime** |  |
**supply_end_date** | **datetime** |  | [optional]
**contracted_service_locations** | [**List[CreateContractServiceLocationRequest]**](CreateContractServiceLocationRequest.md) |  |
**attachment_signatures** | [**List[AttachmentSignature]**](AttachmentSignature.md) |  | [optional]
**product_id** | **str** |  | [optional]
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional]
**external_contract_reference** | **str** |  |
**billing_properties** | [**CreateContractBillingPropertiesBaseRequest**](CreateContractBillingPropertiesBaseRequest.md) |  |

## Example

```python
from masterdata_client.models.create_contract_request import CreateContractRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateContractRequest from a JSON string
create_contract_request_instance = CreateContractRequest.from_json(json)
# print the JSON string representation of the object
print(CreateContractRequest.to_json())

# convert the object into a dict
create_contract_request_dict = create_contract_request_instance.to_dict()
# create an instance of CreateContractRequest from a dict
create_contract_request_from_dict = CreateContractRequest.from_dict(create_contract_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
