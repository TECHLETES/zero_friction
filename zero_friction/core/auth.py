from dotenv import load_dotenv
import os
import requests
import pandas as pd

# Load environment variables from .env file
load_dotenv()

ZF_API_KEY = os.getenv('ZF_API_KEY')
ZF_TENANT_ID = os.getenv('ZF_TENANT_ID')
ZF_ORG_ID = os.getenv('ZF_ORG_ID')
ZF_CLIENT_ID = os.getenv('ZF_CLIENT_ID')
ZF_CLIENT_SECRET = os.getenv('ZF_CLIENT_SECRET')
ZF_USERNAME = os.getenv('ZF_USERNAME')
ZF_PASSWORD = os.getenv('ZF_PASSWORD')

def get_oauth_token():
    """
    Retrieves an OAuth access token using the Client Credentials Flow.
    This function sends a POST request to the specified token URL with the 
    required client credentials and scope to obtain an access token. The 
    access token is used for authenticating API requests.
    Returns:
        str: The OAuth access token.
    Raises:
        requests.exceptions.HTTPError: If the token request fails or returns 
        an error response.
    """

    # === OAuth Token Request (Client Credentials Flow) ===
    token_url = "https://login.microsoftonline.com/0frictionprod.onmicrosoft.com/oauth2/v2.0/token"

    token_data = {
        "client_id": ZF_CLIENT_ID,
        "client_secret": ZF_CLIENT_SECRET,
        "grant_type": "client_credentials",
        "scope": "https://0frictionprod.onmicrosoft.com/zf-apigw/.default"
    }

    token_response = requests.post(token_url, data=token_data)
    token_response.raise_for_status()
    access_token = token_response.json()["access_token"]

    if not access_token:
        raise ValueError("Failed to retrieve access token.")
    return access_token

def get_oauth_response():
    """
    Retrieves the full OAuth token response and access token using the Client Credentials Flow.

    This function sends a POST request to the specified token URL with the required client credentials and scope.
    It returns both the full JSON response from the token endpoint and the extracted access token.

    Returns:
        tuple: A tuple containing:
            - dict: The full JSON response from the token endpoint.
            - str: The OAuth access token.

    Raises:
        requests.exceptions.HTTPError: If the token request fails or returns an error response.
        ValueError: If the access token is not present in the response.
    """

    # === OAuth Token Request (Client Credentials Flow) ===
    token_url = "https://login.microsoftonline.com/0frictionprod.onmicrosoft.com/oauth2/v2.0/token"

    token_data = {
        "client_id": ZF_CLIENT_ID,
        "client_secret": ZF_CLIENT_SECRET,
        "grant_type": "client_credentials",
        "scope": "https://0frictionprod.onmicrosoft.com/zf-apigw/.default"
    }

    token_response = requests.post(token_url, data=token_data)
    token_response.raise_for_status()
    access_token = token_response.json()["access_token"]

    if not access_token:
        raise ValueError("Failed to retrieve access token.")
    return token_response.json(), access_token

def get_headers() -> dict:
    """
    Generate headers for API requests using environment variables and the provided access token.

    Parameters
    ----------
    access_token : str
        The OAuth access token.

    Returns
    -------
    dict
        A dictionary containing the headers for the API request.
    """
    access_token = get_oauth_token()
    headers = {
        "Authorization": f"Bearer {access_token}",
        "apim-sub": ZF_API_KEY,
        "zf-tuuid": ZF_TENANT_ID,
        "zf-ouuid": ZF_ORG_ID,
        "Content-Type": "application/json",
        "Cache-Control": "no-cache"
    }
    return headers

def create_config(host: str, oath_token: str) -> dict:
    """
    Creates a configuration dictionary for API requests to the Zero Friction API.
        The OAuth access token to authenticate API requests.
    dict
        A dictionary containing configuration parameters required for API requests, including:
            - host: The API base URL.
            - api_key: The API key for authentication.
            - username: The username for authentication.
            - password: The password for authentication.
            - access_token: The provided OAuth access token.
    """

    config_dict = {
    "host": host,
    "api_key": ZF_API_KEY,
    "username": ZF_USERNAME,
    "password": ZF_PASSWORD,
    "access_token": oath_token
    }
    return config_dict