# aws-lambda-example-update

This is an update of example form a Lambda service which interacts with AccelByte services 
in [DEMO environment](https://demo.accelbyte.io) using AccelByte Go SDK.
This update is using lambda function url and token validation inside.

## Prerequisites

1. [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

2. [Docker](https://docs.docker.com/engine/install/)

3. [Go 1.16](https://go.dev/dl/) 

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

3. Test Using Postman
   - Import postman collection [aws_lambda_example.postman_collection.json](aws-lambda-example-update.postman_collection.json)
   - Open `00 GetAccessToken` and fill up the variables needed to get the user access token.
   - Open `01 CreateUserStats` update url with previously generated url from deploy command. Copy the user access token previously for the Authorization `Bearer xxxx`. The test
     payload can be inspected in `Body` tab. Click `Send` button.
   - Open `02 GetUserStats` update url with previously generated url from deploy command. Copy the user access token previously for the Authorization `Bearer xxxx`. The test
     payload can be inspected in `Body` tab. Click `Send` button.
   - Open `03 DeleteUserStats` update url with previously generated url from deploy command. Copy the user access token previously for the Authorization `Bearer xxxx` and fill up the raw body. The test
     payload can be inspected in `Body` tab. Click `Send` button.


## Try locally

1. Build Lambda service

    ```
    sam build
    ```

2. Run Lambda service locally

    ```
    sam local start-lambda
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
