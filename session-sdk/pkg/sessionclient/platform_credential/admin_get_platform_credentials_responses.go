// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_credential

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetPlatformCredentialsReader is a Reader for the AdminGetPlatformCredentials structure.
type AdminGetPlatformCredentialsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlatformCredentialsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlatformCredentialsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlatformCredentialsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlatformCredentialsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlatformCredentialsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlatformCredentialsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlatformCredentialsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/platform-credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlatformCredentialsOK creates a AdminGetPlatformCredentialsOK with default headers values
func NewAdminGetPlatformCredentialsOK() *AdminGetPlatformCredentialsOK {
	return &AdminGetPlatformCredentialsOK{}
}

/*AdminGetPlatformCredentialsOK handles this case with default header values.

  OK
*/
type AdminGetPlatformCredentialsOK struct {
	Payload *sessionclientmodels.ModelsPlatformCredentials
}

func (o *AdminGetPlatformCredentialsOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsOK) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsOK) GetPayload() *sessionclientmodels.ModelsPlatformCredentials {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsPlatformCredentials)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformCredentialsBadRequest creates a AdminGetPlatformCredentialsBadRequest with default headers values
func NewAdminGetPlatformCredentialsBadRequest() *AdminGetPlatformCredentialsBadRequest {
	return &AdminGetPlatformCredentialsBadRequest{}
}

/*AdminGetPlatformCredentialsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlatformCredentialsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlatformCredentialsBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsBadRequest) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformCredentialsUnauthorized creates a AdminGetPlatformCredentialsUnauthorized with default headers values
func NewAdminGetPlatformCredentialsUnauthorized() *AdminGetPlatformCredentialsUnauthorized {
	return &AdminGetPlatformCredentialsUnauthorized{}
}

/*AdminGetPlatformCredentialsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlatformCredentialsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlatformCredentialsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformCredentialsForbidden creates a AdminGetPlatformCredentialsForbidden with default headers values
func NewAdminGetPlatformCredentialsForbidden() *AdminGetPlatformCredentialsForbidden {
	return &AdminGetPlatformCredentialsForbidden{}
}

/*AdminGetPlatformCredentialsForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlatformCredentialsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlatformCredentialsForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsForbidden) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformCredentialsNotFound creates a AdminGetPlatformCredentialsNotFound with default headers values
func NewAdminGetPlatformCredentialsNotFound() *AdminGetPlatformCredentialsNotFound {
	return &AdminGetPlatformCredentialsNotFound{}
}

/*AdminGetPlatformCredentialsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlatformCredentialsNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlatformCredentialsNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsNotFound) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformCredentialsInternalServerError creates a AdminGetPlatformCredentialsInternalServerError with default headers values
func NewAdminGetPlatformCredentialsInternalServerError() *AdminGetPlatformCredentialsInternalServerError {
	return &AdminGetPlatformCredentialsInternalServerError{}
}

/*AdminGetPlatformCredentialsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlatformCredentialsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlatformCredentialsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminGetPlatformCredentialsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlatformCredentialsInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlatformCredentialsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformCredentialsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
