# AccelByte Golang SDK CLI

## Usage
1. clone the whole [accelbyte-go-sdk](https://github.com/AccelByte/accelbyte-go-sdk)
2. go to [samples/cli](https://github.com/AccelByte/accelbyte-go-sdk/tree/main/samples/cli). Make sure you already in this `cli` directory

### commands
You could also interact with the SDK using this package's command-line interface.

```
sample-apps <command> [options]
``` 

To see available service commands (HTTP endpoints): 

```
sample-apps -h
```
To see available endpoint of a service command (HTTP endpoints):

```
sample-apps <ServiceName-command> -h
```
To see available options of a specific command (HTTP endpoints):  

```
sample-apps <ServiceName-command> <methodName-command> -h
```

To enter WebSocket mode (WebSocket endpoints):

```
sample-apps --wsMode
```

Most commands will require you to login as either a `client` or as a `user`.<br />
For these commands you'll have to pass either `sample-apps login` or `sample-apps loginClient`.
```sh
# Login as user
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP
# Note: Please specify clientId and clientSecret in configRepository. Please refer to `sample-apps/pkg/repository`

# LoginClient as client
sample-apps loginClient
# Note: oauth token with client_credentials grant type
```
But first, you need to set the environment variables
```sh
# To directly export the variables in terminal (linux)
export APP_CLIENT_ID=<value>
export APP_CLIENT_SECRET=<value>
export JUSTICE_BASE_URL="https://<environment>.accelbyte.io"

# To check if you use the correct value
echo $APP_CLIENT_ID
echo $APP_CLIENT_SECRET
echo $JUSTICE_BASE_URL
```
```sh
# To directly export the variables in control panel (windows user)
setx APP_CLIENT_ID "<value>"
setx APP_CLIENT_SECRET "<value>"
setx JUSTICE_BASE_URL "https://<environment>.accelbyte.io"

# To check if you use the correct value
echo %APP_CLIENT_ID%
echo %APP_CLIENT_SECRET%
echo %JUSTICE_BASE_URL%
```

### Examples

#### Interacting with Justice HTTP Endpoints
Note: Please do login
```sh
# Register User
sample-apps Iam publicCreateUserV3 --namespace 'accelbyte' --body '{"PasswordMD5Sum": "string", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}], "authType": "EMAILPASSWD", "code": "GWUvzq1Z", "country": "US", "dateOfBirth": "2019-04-29", "displayName": "goSDK", "emailAddress": "goSDK@accelbyte.net", "password": "password1", "reachMinimumAge": false}'

# Get user roles
sample-apps Iam adminGetRolesV3 --after '' --before '' --limit '20' --isWildcard 'False'

# Get my profile
sample-apps Basic getMyProfileInfo --namespace 'accelbyte'
```
```sh
# Verify Token
sample-apps Iam publicUserVerificationV3 --namespace accelbyte --body '{"code":"123456","contactType":"string","languageTag":"en-US","validateOnly":true}'

# Get Store Items
sample-apps Platform queryItems --namespace 'accelbyte' --activeOnly 'False' --appType 'GAME' --itemType 'INGAMEITEM' --limit '20' --offset '0' --availableDate 'string' --baseAppId 'string' --categoryPath 'string' --features 'string' --region 'string' --sortBy 'string' --storeId 'string' --tags 'string' --targetNamespace 'string'

# Entitlements
sample-apps Platform grantEntitlement --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539' --body '[{"endDate": "1975-11-20T00:00:00Z", "grantedCode": "string", "itemId": "string", "itemNamespace": "string", "language": "string", "quantity": 64, "region": "string", "source": "REFERRAL_BONUS", "startDate": "1995-03-07T00:00:00Z", "storeId": "string"}]'
sample-apps Platform getUserEntitlement --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539' --entitlementId 'string'

# Friends
sample-apps Lobby addFriendsWithoutConfirmation --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539' --body '{"friendIds": ["e5ca182435a84802b4996b6bdbeffa85"]}'
sample-apps Lobby getListOfFriends --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539'

# Game records
sample-apps Cloudsave postGameRecordHandlerV1 --namespace 'accelbyte' --key 'sample-key' --body '{"key1": "value1"}'
sample-apps Cloudsave getGameRecordHandlerV1 --namespace 'accelbyte' --key 'sample-key'

# Player records
 sample-apps Cloudsave postPlayerPublicRecordHandlerV1 --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539' --key 'sample-key' --body '{"key1":"value1"}'
 sample-apps Cloudsave getPlayerPublicRecordHandlerV1 --namespace 'accelbyte' --userId 'd34a444f173f4ed49e44bd9f22418539' --key 'sample-key'
# Note: make user ID player registered on specified namespace
```

#### Interacting with Justice WebSocket Endpoints
Perform login and enter websocket mode.<br />
Example:
```shell
## Login using existing user
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP

## Enter ws mode, if successfully connected, menu option will appears and sample-apps will listen for user input.
sample-apps --wsMode
```
