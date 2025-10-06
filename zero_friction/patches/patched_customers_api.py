# zero_friction/wrappers/masterdata_customers_adapter.py
from typing import Any, Dict, Optional, Tuple, Union, List

from masterdata_client.api_client import ApiClient
from masterdata_client.api.customers_api import CustomersApi
# If your generated model class has a different name, adjust the string in _RESPONSE_TYPE below
# and optionally import the class for type hints:
# from masterdata_client.model.customer_dto_api_response_dto import CustomerDTOApiResponseDTO

class PatchedCustomersApi:
    """
    Drop in replacement for CustomersApi.get_customer_by_account_number.
    Calls the correct endpoint and preserves the original signature so existing call sites keep working.
    All other attributes and methods fall through to the original CustomersApi.
    """

    _PATH = "/api/md/Customers/ByAccountNumber"
    _METHOD = "GET"
    _AUTH = ["BearerAuth"]             # adjust if your generated client uses a different auth scheme name
    _RESPONSE_TYPE = "CustomerDTOApiResponseDTO"  # exact string used by the generator for the success model

    def __init__(self, customers_api: CustomersApi):
        self.api_client = customers_api.api_client
        self._orig = CustomersApi(self.api_client)  # for passthrough of other methods

    # Keep the same signature your generated method exposes
    def get_customer_by_account_number(
        self,
        customer_account_number: str,
        zf_tuuid: str,
        zf_ouuid: str,
        _request_timeout: Optional[
            Union[
                float,
                Tuple[float, float]
            ]
        ] = None,
        _request_auth: Optional[Dict[str, Any]] = None,
        _content_type: Optional[str] = None,
        _headers: Optional[Dict[str, Any]] = None,
        _host_index: int = 0,
        # ) -> CustomerDTOApiResponseDTO:
    ):
        """
        Replacement for the generated method.
        Hits /api/md/Customers/ByAccountNumber?customerAccountNumber=... with required Zero Friction headers.
        """

        _host: Optional[str] = None
        _collection_formats: Dict[str, str] = {}

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = [("customerAccountNumber", customer_account_number)]
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, Any] = {}
        _body_params: Optional[bytes] = None

        # add required tenant headers
        _header_params["zf-tuuid"] = zf_tuuid
        _header_params["zf-ouuid"] = zf_ouuid

        if "Accept" not in _header_params:
            _header_params["Accept"] = self.api_client.select_header_accept(
                ["text/plain", "application/json", "text/json"]
            )
        if _content_type:
            _header_params["Content-Type"] = _content_type

        # reuse the same auth settings labels your generator uses
        _auth_settings: List[str] = ["apiKeyQuery", "apiKeyHeader"]

        # build the serialized request with the corrected resource_path
        _param = self.api_client.param_serialize(
            method="GET",
            resource_path="/Customers/ByAccountNumber",
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth,
        )

        _response_types_map: Dict[str, Optional[str]] = {
            "200": self._RESPONSE_TYPE,
            "404": "ProblemDetails",
        }

        # call through the ApiClient
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout,
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data

    def __getattr__(self, name: str):
        # passthrough for any other methods or attributes
        return getattr(self._orig, name)


