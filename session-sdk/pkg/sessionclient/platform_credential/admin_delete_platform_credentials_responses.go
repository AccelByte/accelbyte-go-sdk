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

// AdminDeletePlatformCredentialsReader is a Reader for the AdminDeletePlatformCredentials structure.
type AdminDeletePlatformCredentialsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlatformCredentialsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlatformCredentialsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeletePlatformCredentialsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlatformCredentialsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlatformCredentialsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlatformCredentialsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlatformCredentialsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlatformCredentialsNoContent creates a AdminDeletePlatformCredentialsNoContent with default headers values
func NewAdminDeletePlatformCredentialsNoContent() *AdminDeletePlatformCredentialsNoContent {
	return &AdminDeletePlatformCredentialsNoContent{}
}

/*AdminDeletePlatformCredentialsNoContent handles this case with default header values.

  No Content
*/
type AdminDeletePlatformCredentialsNoContent struct {
}

func (o *AdminDeletePlatformCredentialsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsNoContent ", 204)
}

func (o *AdminDeletePlatformCredentialsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformCredentialsBadRequest creates a AdminDeletePlatformCredentialsBadRequest with default headers values
func NewAdminDeletePlatformCredentialsBadRequest() *AdminDeletePlatformCredentialsBadRequest {
	return &AdminDeletePlatformCredentialsBadRequest{}
}

/*AdminDeletePlatformCredentialsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeletePlatformCredentialsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsBadRequest) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlatformCredentialsUnauthorized creates a AdminDeletePlatformCredentialsUnauthorized with default headers values
func NewAdminDeletePlatformCredentialsUnauthorized() *AdminDeletePlatformCredentialsUnauthorized {
	return &AdminDeletePlatformCredentialsUnauthorized{}
}

/*AdminDeletePlatformCredentialsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeletePlatformCredentialsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsUnauthorized) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlatformCredentialsForbidden creates a AdminDeletePlatformCredentialsForbidden with default headers values
func NewAdminDeletePlatformCredentialsForbidden() *AdminDeletePlatformCredentialsForbidden {
	return &AdminDeletePlatformCredentialsForbidden{}
}

/*AdminDeletePlatformCredentialsForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeletePlatformCredentialsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsForbidden) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlatformCredentialsNotFound creates a AdminDeletePlatformCredentialsNotFound with default headers values
func NewAdminDeletePlatformCredentialsNotFound() *AdminDeletePlatformCredentialsNotFound {
	return &AdminDeletePlatformCredentialsNotFound{}
}

/*AdminDeletePlatformCredentialsNotFound handles this case with default header values.

  Not Found
*/
type AdminDeletePlatformCredentialsNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsNotFound) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeletePlatformCredentialsInternalServerError creates a AdminDeletePlatformCredentialsInternalServerError with default headers values
func NewAdminDeletePlatformCredentialsInternalServerError() *AdminDeletePlatformCredentialsInternalServerError {
	return &AdminDeletePlatformCredentialsInternalServerError{}
}

/*AdminDeletePlatformCredentialsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeletePlatformCredentialsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials][%d] adminDeletePlatformCredentialsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsInternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
