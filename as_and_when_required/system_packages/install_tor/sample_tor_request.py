import requests

from torrequest import TorRequest


tr=TorRequest(password='<password>')

response = requests.get('http://ipecho.net/plain')
print ("My Original IP Address:",response.text)

tr.reset_identity() #Reset Tor
response= tr.get('http://ipecho.net/plain')
print ("New Ip Address",response.text)

tr.reset_identity() #Reset Tor
response= tr.get('http://ipecho.net/plain')
print ("New Ip Address",response.text)

# https://github.com/erdiaker/torrequest/issues/5
tr.close()
tr=TorRequest(password='<password>')

tr.reset_identity() #Reset Tor
response= tr.get('http://ipecho.net/plain')
print ("New Ip Address",response.text)
