# aws-lambda-example

This is an example of a Lambda service which interacts with AccelByte services 
in [DEMO environment](https://demo.accelbyte.io) using AccelByte Go SDK.
This app is using lambda function url, token validation, and a token refresh inside the code.

## Prerequisites

1. [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

2. [Docker](https://docs.docker.com/engine/install/)

3. [Go 1.18](https://go.dev/dl/) 

4. [Postman](https://www.postman.com/downloads/)

5. AccelByte `CLIENT_ID` and `CLIENT_SECRET` for accessing services in 
   [DEMO environment](https://demo.accelbyte.io).

    See https://docs.accelbyte.io/guides/access/iam-client.html

    Required permissions:

    - Resource : ADMIN:NAMESPACE:{namespace}:USER:*:STATITEM
	- Action : create, read, delete

6. An existing `Stat Code`

    [Create a statistic configuration](https://docs.accelbyte.io/guides/storage/statistic.html#create-a-new-statistic-configuration)
    if you do not have it yet. 

7. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

    This is required only if you want to deploy this example to AWS.
    It needs to have the correct permissions to perform sam deploy. 

## Configure

1. Open [template.yaml](template.yaml)

2. Enter your AccelByte `CLIENT_ID` and `CLIENT_SECRET` under `AB_CLIENT_ID` 
   and `AB_CLIENT_SECRET` environment variable respectively

3. Save it

## Deploy to AWS

1. Build Lambda service

    ```
    sam build
    ```

2. Deploy Lambda service

    ```
    sam deploy --guided
   
    # if successful the function url will be generated and displayed on terminal
    ```

3. Test Using Your Information
    ```bash
    # Add a statistic to a user
    curl -X POST '{FunctionURL}?namespace={namespace}&userId={user_id}&statCode={stat_code}' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer {access token}'
    
    # Get a list of statistics of a user
    curl '{FunctionURL}?namespace={Namespace}&userId={user_id}' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer {access token}'
    
    # Delete a statistic from a user
    curl -X DELETE '{FunctionURL}?namespace={Namespace}&userId={user_id}&statCode={stat_code}' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer {access token}'
    ```


## Build and Test Locally

Start the lambda, in this case, locally for testing purpose.

1. Input credentials in `POST.json`, `GET.json`, `DELETE.json` files.

    ```json
    "headers": {
        "Content-Type": "application/json",
        "authorization": "Bearer xxxxxxxxxxxxxxxxxx"
    },
    "queryStringParameters": {
        "namespace": "xxxxxxxxxxxxxxxxxx",
        "userId": "xxxxxxxxxxxxxxxxxx",
        "statCode": "xxxxxxxxxxxxxxxxxx"
    }
    ```
2. Build lambda.

    ```bash
    sam build
    ```

3. Run the following command and replace `httpMethod` with POST/GET/DELETE.

    ```bash
    sam local invoke UserStatsFunction --event ./{httpMethod}.json
    ```

## Troubleshooting

- The SAM [template.yaml](template.yaml) will create a new role for the lambda function. Make sure to have the `iam:CreateRole` permission.
- This function URL auth type is NONE, but is missing permissions required for public access. To allow unauthenticated requests, choose the Permissions tab and and create a resource-based policy that grants lambda:invokeFunctionUrl permissions to all principals (*). Alternatively, update the function URL auth type to AWS_IAM to use IAM authentication.

## References

- https://docs.accelbyte.io/
- https://demo.accelbyte.io/iam/apidocs/
- https://demo.accelbyte.io/social/apidocs/
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-build.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-local-start-api.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-deploy.html
