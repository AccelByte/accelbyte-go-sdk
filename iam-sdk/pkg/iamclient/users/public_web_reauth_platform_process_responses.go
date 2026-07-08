// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicWebReauthPlatformProcessReader is a Reader for the PublicWebReauthPlatformProcess structure.
type PublicWebReauthPlatformProcessReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicWebReauthPlatformProcessReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicWebReauthPlatformProcessOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicWebReauthPlatformProcessBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicWebReauthPlatformProcessInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth/process returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicWebReauthPlatformProcessOK creates a PublicWebReauthPlatformProcessOK with default headers values
func NewPublicWebReauthPlatformProcessOK() *PublicWebReauthPlatformProcessOK {
	return &PublicWebReauthPlatformProcessOK{}
}

/*PublicWebReauthPlatformProcessOK handles this case with default header values.

  OK
*/
type PublicWebReauthPlatformProcessOK struct {
	Payload *iamclientmodels.ModelWebReauthProcessResponse
}

func (o *PublicWebReauthPlatformProcessOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth/process][%d] publicWebReauthPlatformProcessOK  %+v", 200, o.ToJSONString())
}

func (o *PublicWebReauthPlatformProcessOK) ToJSONString() string {
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

func (o *PublicWebReauthPlatformProcessOK) GetPayload() *iamclientmodels.ModelWebReauthProcessResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformProcessOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelWebReauthProcessResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicWebReauthPlatformProcessBadRequest creates a PublicWebReauthPlatformProcessBadRequest with default headers values
func NewPublicWebReauthPlatformProcessBadRequest() *PublicWebReauthPlatformProcessBadRequest {
	return &PublicWebReauthPlatformProcessBadRequest{}
}

/*PublicWebReauthPlatformProcessBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10249</td><td>platform re-authentication failed</td></tr></table>
*/
type PublicWebReauthPlatformProcessBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebReauthPlatformProcessBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth/process][%d] publicWebReauthPlatformProcessBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicWebReauthPlatformProcessBadRequest) ToJSONString() string {
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

func (o *PublicWebReauthPlatformProcessBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformProcessBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicWebReauthPlatformProcessInternalServerError creates a PublicWebReauthPlatformProcessInternalServerError with default headers values
func NewPublicWebReauthPlatformProcessInternalServerError() *PublicWebReauthPlatformProcessInternalServerError {
	return &PublicWebReauthPlatformProcessInternalServerError{}
}

/*PublicWebReauthPlatformProcessInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicWebReauthPlatformProcessInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebReauthPlatformProcessInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/reauth/process][%d] publicWebReauthPlatformProcessInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicWebReauthPlatformProcessInternalServerError) ToJSONString() string {
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

func (o *PublicWebReauthPlatformProcessInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebReauthPlatformProcessInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
