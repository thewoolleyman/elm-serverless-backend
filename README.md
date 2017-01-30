# Elm Serverless Backend

Example of using elm-lang to implement AWS lambda serverless backend app with persistence

## Setup

* Create AWS serverless setup - Lambda microservice-http-endpoint template 

## API curl

* `curl -X 'POST' -d '{"TableName":"ServerlessPersistence","Item":{"string":"two"}}' https://XXX.execute-api.us-west-2.amazonaws.com/prod/persistence; echo`
* `curl -X 'GET' https://XXX.execute-api.us-west-2.amazonaws.com/prod/persistence?TableName=ServerlessPersistence; echo`

## Gotchas

* API Gateway Lambda Proxy responses must be proper JSON format, or else you
  will get server errors.  See https://forums.aws.amazon.com/thread.jspa?threadID=239688
  