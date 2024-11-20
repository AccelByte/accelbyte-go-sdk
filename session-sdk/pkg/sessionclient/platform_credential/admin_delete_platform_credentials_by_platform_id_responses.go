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

// AdminDeletePlatformCredentialsByPlatformIDReader is a Reader for the AdminDeletePlatformCredentialsByPlatformID structure.
type AdminDeletePlatformCredentialsByPlatformIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlatformCredentialsByPlatformIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlatformCredentialsByPlatformIDNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeletePlatformCredentialsByPlatformIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlatformCredentialsByPlatformIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlatformCredentialsByPlatformIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlatformCredentialsByPlatformIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlatformCredentialsByPlatformIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlatformCredentialsByPlatformIDNoContent creates a AdminDeletePlatformCredentialsByPlatformIDNoContent with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDNoContent() *AdminDeletePlatformCredentialsByPlatformIDNoContent {
	return &AdminDeletePlatformCredentialsByPlatformIDNoContent{}
}

/*AdminDeletePlatformCredentialsByPlatformIDNoContent handles this case with default header values.

  No Content
*/
type AdminDeletePlatformCredentialsByPlatformIDNoContent struct {
}

func (o *AdminDeletePlatformCredentialsByPlatformIDNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdNoContent ", 204)
}

func (o *AdminDeletePlatformCredentialsByPlatformIDNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformCredentialsByPlatformIDBadRequest creates a AdminDeletePlatformCredentialsByPlatformIDBadRequest with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDBadRequest() *AdminDeletePlatformCredentialsByPlatformIDBadRequest {
	return &AdminDeletePlatformCredentialsByPlatformIDBadRequest{}
}

/*AdminDeletePlatformCredentialsByPlatformIDBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeletePlatformCredentialsByPlatformIDBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsByPlatformIDBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsByPlatformIDBadRequest) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsByPlatformIDBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsByPlatformIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformCredentialsByPlatformIDUnauthorized creates a AdminDeletePlatformCredentialsByPlatformIDUnauthorized with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDUnauthorized() *AdminDeletePlatformCredentialsByPlatformIDUnauthorized {
	return &AdminDeletePlatformCredentialsByPlatformIDUnauthorized{}
}

/*AdminDeletePlatformCredentialsByPlatformIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeletePlatformCredentialsByPlatformIDUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsByPlatformIDUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsByPlatformIDUnauthorized) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsByPlatformIDUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsByPlatformIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformCredentialsByPlatformIDForbidden creates a AdminDeletePlatformCredentialsByPlatformIDForbidden with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDForbidden() *AdminDeletePlatformCredentialsByPlatformIDForbidden {
	return &AdminDeletePlatformCredentialsByPlatformIDForbidden{}
}

/*AdminDeletePlatformCredentialsByPlatformIDForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeletePlatformCredentialsByPlatformIDForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsByPlatformIDForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsByPlatformIDForbidden) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsByPlatformIDForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsByPlatformIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformCredentialsByPlatformIDNotFound creates a AdminDeletePlatformCredentialsByPlatformIDNotFound with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDNotFound() *AdminDeletePlatformCredentialsByPlatformIDNotFound {
	return &AdminDeletePlatformCredentialsByPlatformIDNotFound{}
}

/*AdminDeletePlatformCredentialsByPlatformIDNotFound handles this case with default header values.

  Not Found
*/
type AdminDeletePlatformCredentialsByPlatformIDNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsByPlatformIDNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsByPlatformIDNotFound) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsByPlatformIDNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsByPlatformIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeletePlatformCredentialsByPlatformIDInternalServerError creates a AdminDeletePlatformCredentialsByPlatformIDInternalServerError with default headers values
func NewAdminDeletePlatformCredentialsByPlatformIDInternalServerError() *AdminDeletePlatformCredentialsByPlatformIDInternalServerError {
	return &AdminDeletePlatformCredentialsByPlatformIDInternalServerError{}
}

/*AdminDeletePlatformCredentialsByPlatformIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeletePlatformCredentialsByPlatformIDInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeletePlatformCredentialsByPlatformIDInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}][%d] adminDeletePlatformCredentialsByPlatformIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlatformCredentialsByPlatformIDInternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlatformCredentialsByPlatformIDInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformCredentialsByPlatformIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
