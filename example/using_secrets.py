from utils.secrets import get_secret


def main() -> None:
    # Use the get_secret function to retrieve your secret.
    # To find the path to your secret go to 1Password Interace > your item > click dropdown next to field > "Copy secret reference"
    api_key = get_secret("op://Shared with all/RAGFLow API Key/credential")
    if api_key:
        print(f"API_KEY is set: {api_key}")
    else:
        print("API_KEY is not set.")


if __name__ == "__main__":
    main()
