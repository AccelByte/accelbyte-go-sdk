// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AuthenticationWithPlatformLinkV4Reader is a Reader for the AuthenticationWithPlatformLinkV4 structure.
type AuthenticationWithPlatformLinkV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthenticationWithPlatformLinkV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAuthenticationWithPlatformLinkV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewAuthenticationWithPlatformLinkV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAuthenticationWithPlatformLinkV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAuthenticationWithPlatformLinkV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAuthenticationWithPlatformLinkV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAuthenticationWithPlatformLinkV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/authenticateWithLink returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthenticationWithPlatformLinkV4OK creates a AuthenticationWithPlatformLinkV4OK with default headers values
func NewAuthenticationWithPlatformLinkV4OK() *AuthenticationWithPlatformLinkV4OK {
	return &AuthenticationWithPlatformLinkV4OK{}
}

/*AuthenticationWithPlatformLinkV4OK handles this case with default header values.

  Succeed to authenticate and link platform account.
*/
type AuthenticationWithPlatformLinkV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *AuthenticationWithPlatformLinkV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4OK  %+v", 200, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV4Accepted creates a AuthenticationWithPlatformLinkV4Accepted with default headers values
func NewAuthenticationWithPlatformLinkV4Accepted() *AuthenticationWithPlatformLinkV4Accepted {
	return &AuthenticationWithPlatformLinkV4Accepted{}
}

/*AuthenticationWithPlatformLinkV4Accepted handles this case with default header values.

  Login queue ticket returned
*/
type AuthenticationWithPlatformLinkV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *AuthenticationWithPlatformLinkV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4Accepted) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV4BadRequest creates a AuthenticationWithPlatformLinkV4BadRequest with default headers values
func NewAuthenticationWithPlatformLinkV4BadRequest() *AuthenticationWithPlatformLinkV4BadRequest {
	return &AuthenticationWithPlatformLinkV4BadRequest{}
}

/*AuthenticationWithPlatformLinkV4BadRequest handles this case with default header values.

  Invalid username or password.
*/
type AuthenticationWithPlatformLinkV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV4Unauthorized creates a AuthenticationWithPlatformLinkV4Unauthorized with default headers values
func NewAuthenticationWithPlatformLinkV4Unauthorized() *AuthenticationWithPlatformLinkV4Unauthorized {
	return &AuthenticationWithPlatformLinkV4Unauthorized{}
}

/*AuthenticationWithPlatformLinkV4Unauthorized handles this case with default header values.

  Need 2FA.
*/
type AuthenticationWithPlatformLinkV4Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *AuthenticationWithPlatformLinkV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV4Forbidden creates a AuthenticationWithPlatformLinkV4Forbidden with default headers values
func NewAuthenticationWithPlatformLinkV4Forbidden() *AuthenticationWithPlatformLinkV4Forbidden {
	return &AuthenticationWithPlatformLinkV4Forbidden{}
}

/*AuthenticationWithPlatformLinkV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type AuthenticationWithPlatformLinkV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV4Conflict creates a AuthenticationWithPlatformLinkV4Conflict with default headers values
func NewAuthenticationWithPlatformLinkV4Conflict() *AuthenticationWithPlatformLinkV4Conflict {
	return &AuthenticationWithPlatformLinkV4Conflict{}
}

/*AuthenticationWithPlatformLinkV4Conflict handles this case with default header values.

  User already link this platform's another account'.
*/
type AuthenticationWithPlatformLinkV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/authenticateWithLink][%d] authenticationWithPlatformLinkV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV4Conflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AuthenticationWithPlatformLinkV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
