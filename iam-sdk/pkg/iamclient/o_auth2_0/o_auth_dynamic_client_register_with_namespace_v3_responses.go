// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// OAuthDynamicClientRegisterWithNamespaceV3Reader is a Reader for the OAuthDynamicClientRegisterWithNamespaceV3 structure.
type OAuthDynamicClientRegisterWithNamespaceV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OAuthDynamicClientRegisterWithNamespaceV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewOAuthDynamicClientRegisterWithNamespaceV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOAuthDynamicClientRegisterWithNamespaceV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewOAuthDynamicClientRegisterWithNamespaceV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewOAuthDynamicClientRegisterWithNamespaceV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewOAuthDynamicClientRegisterWithNamespaceV3NotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/namespace/{namespace}/register returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOAuthDynamicClientRegisterWithNamespaceV3Created creates a OAuthDynamicClientRegisterWithNamespaceV3Created with default headers values
func NewOAuthDynamicClientRegisterWithNamespaceV3Created() *OAuthDynamicClientRegisterWithNamespaceV3Created {
	return &OAuthDynamicClientRegisterWithNamespaceV3Created{}
}

/*OAuthDynamicClientRegisterWithNamespaceV3Created handles this case with default header values.

  Created
*/
type OAuthDynamicClientRegisterWithNamespaceV3Created struct {
	Payload *iamclientmodels.OauthmodelClientRegisterResponse
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3Created) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/namespace/{namespace}/register][%d] oAuthDynamicClientRegisterWithNamespaceV3Created  %+v", 201, o.ToJSONString())
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3Created) ToJSONString() string {
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

func (o *OAuthDynamicClientRegisterWithNamespaceV3Created) GetPayload() *iamclientmodels.OauthmodelClientRegisterResponse {
	return o.Payload
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelClientRegisterResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOAuthDynamicClientRegisterWithNamespaceV3BadRequest creates a OAuthDynamicClientRegisterWithNamespaceV3BadRequest with default headers values
func NewOAuthDynamicClientRegisterWithNamespaceV3BadRequest() *OAuthDynamicClientRegisterWithNamespaceV3BadRequest {
	return &OAuthDynamicClientRegisterWithNamespaceV3BadRequest{}
}

/*OAuthDynamicClientRegisterWithNamespaceV3BadRequest handles this case with default header values.


Possible error field values in the response:
<ul>
<li>invalid_client_metadata</li>
<li>invalid_client_namespace</li>
</ul>
*/
type OAuthDynamicClientRegisterWithNamespaceV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/namespace/{namespace}/register][%d] oAuthDynamicClientRegisterWithNamespaceV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3BadRequest) ToJSONString() string {
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

func (o *OAuthDynamicClientRegisterWithNamespaceV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOAuthDynamicClientRegisterWithNamespaceV3TooManyRequests creates a OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests with default headers values
func NewOAuthDynamicClientRegisterWithNamespaceV3TooManyRequests() *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests {
	return &OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests{}
}

/*OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/namespace/{namespace}/register][%d] oAuthDynamicClientRegisterWithNamespaceV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests) ToJSONString() string {
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

func (o *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOAuthDynamicClientRegisterWithNamespaceV3InternalServerError creates a OAuthDynamicClientRegisterWithNamespaceV3InternalServerError with default headers values
func NewOAuthDynamicClientRegisterWithNamespaceV3InternalServerError() *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError {
	return &OAuthDynamicClientRegisterWithNamespaceV3InternalServerError{}
}

/*OAuthDynamicClientRegisterWithNamespaceV3InternalServerError handles this case with default header values.


Possible error field values in the response:
<ul>
<li>server_error</li>
</ul>
*/
type OAuthDynamicClientRegisterWithNamespaceV3InternalServerError struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/namespace/{namespace}/register][%d] oAuthDynamicClientRegisterWithNamespaceV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError) ToJSONString() string {
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

func (o *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOAuthDynamicClientRegisterWithNamespaceV3NotImplemented creates a OAuthDynamicClientRegisterWithNamespaceV3NotImplemented with default headers values
func NewOAuthDynamicClientRegisterWithNamespaceV3NotImplemented() *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented {
	return &OAuthDynamicClientRegisterWithNamespaceV3NotImplemented{}
}

/*OAuthDynamicClientRegisterWithNamespaceV3NotImplemented handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20024</td><td>not implemented</td></tr></table>
*/
type OAuthDynamicClientRegisterWithNamespaceV3NotImplemented struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/namespace/{namespace}/register][%d] oAuthDynamicClientRegisterWithNamespaceV3NotImplemented  %+v", 501, o.ToJSONString())
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented) ToJSONString() string {
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

func (o *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
