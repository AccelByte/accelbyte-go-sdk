# aws-lambda-example

This is an example of a Lambda service which interacts with AccelByte services 
in [DEMO environment](https://demo.accelbyte.io) using AccelByte Go SDK.

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
	- Action : create and read

6. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

    This is required only if you want to deploy this example to AWS.
    It needs to have the correct permissions to perform sam deploy. 

## Configure

1. Open [template.yaml](template.yaml)

2. Enter your AccelByte `CLIENT_ID` and `CLIENT_SECRET` under `AB_CLIENT_ID` 
   and `AB_CLIENT_SECRET` environment variable respectively

3. Save it

## Try locally

1. Build Lambda service

    ```
    sam build
    ```

2. Run Lambda service locally

    ```
    sam local start-api
    ```

3. Test using postman

    1. Import [postman_collection.json](postman_collection.json)
    2. Create a new `Environment` and select it.
    3. Open `01 get access token`

        In `Authorization` tab, enter CLIENT_ID and CLIENT_SECRET as Username 
        and Password and click `Send` button. If successful, `access_token` 
        will be populated in the selected `Environment`.

    4. Open `02 create user stat`

        We are going to send a POST request to CreateUserStats endpoint. 
        The test payload can be inspected in `Body` tab. Click `Send` button. 
        If you see any error related to `createUserStatItemConflict`, this is 
        expected when the stat code is already exists.

    5. Open `03 get user stat`

        We are going to send GET request GetUserStats endpoint. The test 
        payload can be inspected in `Body` tab. Click `Send` button. 
        If successful, it will return the stat codes for the given user id 
        in JSON format. 

## Deploy to AWS

1. Build Lambda service

    ```
    sam build
    ```

2. Deploy Lambda service

    ```
    sam deploy --guided
    ```

## References

- https://docs.accelbyte.io/
- https://demo.accelbyte.io/iam/apidocs/
- https://demo.accelbyte.io/social/apidocs/
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-build.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-local-start-api.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-deploy.html
