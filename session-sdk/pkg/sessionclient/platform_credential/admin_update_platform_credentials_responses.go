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

// AdminUpdatePlatformCredentialsReader is a Reader for the AdminUpdatePlatformCredentials structure.
type AdminUpdatePlatformCredentialsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdatePlatformCredentialsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdatePlatformCredentialsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdatePlatformCredentialsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdatePlatformCredentialsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdatePlatformCredentialsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdatePlatformCredentialsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdatePlatformCredentialsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/platform-credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdatePlatformCredentialsOK creates a AdminUpdatePlatformCredentialsOK with default headers values
func NewAdminUpdatePlatformCredentialsOK() *AdminUpdatePlatformCredentialsOK {
	return &AdminUpdatePlatformCredentialsOK{}
}

/*AdminUpdatePlatformCredentialsOK handles this case with default header values.

  OK
*/
type AdminUpdatePlatformCredentialsOK struct {
	Payload string
}

func (o *AdminUpdatePlatformCredentialsOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsOK) ToJSONString() string {
	if o.Payload == "" {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminUpdatePlatformCredentialsOK) GetPayload() string {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdatePlatformCredentialsBadRequest creates a AdminUpdatePlatformCredentialsBadRequest with default headers values
func NewAdminUpdatePlatformCredentialsBadRequest() *AdminUpdatePlatformCredentialsBadRequest {
	return &AdminUpdatePlatformCredentialsBadRequest{}
}

/*AdminUpdatePlatformCredentialsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdatePlatformCredentialsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdatePlatformCredentialsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsBadRequest) ToJSONString() string {
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

func (o *AdminUpdatePlatformCredentialsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformCredentialsUnauthorized creates a AdminUpdatePlatformCredentialsUnauthorized with default headers values
func NewAdminUpdatePlatformCredentialsUnauthorized() *AdminUpdatePlatformCredentialsUnauthorized {
	return &AdminUpdatePlatformCredentialsUnauthorized{}
}

/*AdminUpdatePlatformCredentialsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdatePlatformCredentialsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdatePlatformCredentialsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsUnauthorized) ToJSONString() string {
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

func (o *AdminUpdatePlatformCredentialsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformCredentialsForbidden creates a AdminUpdatePlatformCredentialsForbidden with default headers values
func NewAdminUpdatePlatformCredentialsForbidden() *AdminUpdatePlatformCredentialsForbidden {
	return &AdminUpdatePlatformCredentialsForbidden{}
}

/*AdminUpdatePlatformCredentialsForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdatePlatformCredentialsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdatePlatformCredentialsForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsForbidden) ToJSONString() string {
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

func (o *AdminUpdatePlatformCredentialsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformCredentialsNotFound creates a AdminUpdatePlatformCredentialsNotFound with default headers values
func NewAdminUpdatePlatformCredentialsNotFound() *AdminUpdatePlatformCredentialsNotFound {
	return &AdminUpdatePlatformCredentialsNotFound{}
}

/*AdminUpdatePlatformCredentialsNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdatePlatformCredentialsNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdatePlatformCredentialsNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsNotFound) ToJSONString() string {
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

func (o *AdminUpdatePlatformCredentialsNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformCredentialsInternalServerError creates a AdminUpdatePlatformCredentialsInternalServerError with default headers values
func NewAdminUpdatePlatformCredentialsInternalServerError() *AdminUpdatePlatformCredentialsInternalServerError {
	return &AdminUpdatePlatformCredentialsInternalServerError{}
}

/*AdminUpdatePlatformCredentialsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdatePlatformCredentialsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdatePlatformCredentialsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminUpdatePlatformCredentialsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdatePlatformCredentialsInternalServerError) ToJSONString() string {
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

func (o *AdminUpdatePlatformCredentialsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformCredentialsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
