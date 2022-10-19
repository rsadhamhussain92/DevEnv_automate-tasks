import requests

response = requests.get(url="http://localhost:8000")

print(response.text)
