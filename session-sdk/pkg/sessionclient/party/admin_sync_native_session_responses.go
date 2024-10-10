// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// AdminSyncNativeSessionReader is a Reader for the AdminSyncNativeSession structure.
type AdminSyncNativeSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncNativeSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncNativeSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncNativeSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSyncNativeSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSyncNativeSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSyncNativeSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncNativeSessionOK creates a AdminSyncNativeSessionOK with default headers values
func NewAdminSyncNativeSessionOK() *AdminSyncNativeSessionOK {
	return &AdminSyncNativeSessionOK{}
}

/*AdminSyncNativeSessionOK handles this case with default header values.

  OK
*/
type AdminSyncNativeSessionOK struct {
}

func (o *AdminSyncNativeSessionOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync][%d] adminSyncNativeSessionOK ", 200)
}

func (o *AdminSyncNativeSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSyncNativeSessionBadRequest creates a AdminSyncNativeSessionBadRequest with default headers values
func NewAdminSyncNativeSessionBadRequest() *AdminSyncNativeSessionBadRequest {
	return &AdminSyncNativeSessionBadRequest{}
}

/*AdminSyncNativeSessionBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSyncNativeSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncNativeSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync][%d] adminSyncNativeSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncNativeSessionBadRequest) ToJSONString() string {
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

func (o *AdminSyncNativeSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncNativeSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncNativeSessionUnauthorized creates a AdminSyncNativeSessionUnauthorized with default headers values
func NewAdminSyncNativeSessionUnauthorized() *AdminSyncNativeSessionUnauthorized {
	return &AdminSyncNativeSessionUnauthorized{}
}

/*AdminSyncNativeSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSyncNativeSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncNativeSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync][%d] adminSyncNativeSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSyncNativeSessionUnauthorized) ToJSONString() string {
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

func (o *AdminSyncNativeSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncNativeSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncNativeSessionForbidden creates a AdminSyncNativeSessionForbidden with default headers values
func NewAdminSyncNativeSessionForbidden() *AdminSyncNativeSessionForbidden {
	return &AdminSyncNativeSessionForbidden{}
}

/*AdminSyncNativeSessionForbidden handles this case with default header values.

  Forbidden
*/
type AdminSyncNativeSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncNativeSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync][%d] adminSyncNativeSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSyncNativeSessionForbidden) ToJSONString() string {
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

func (o *AdminSyncNativeSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncNativeSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncNativeSessionInternalServerError creates a AdminSyncNativeSessionInternalServerError with default headers values
func NewAdminSyncNativeSessionInternalServerError() *AdminSyncNativeSessionInternalServerError {
	return &AdminSyncNativeSessionInternalServerError{}
}

/*AdminSyncNativeSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSyncNativeSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncNativeSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync][%d] adminSyncNativeSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSyncNativeSessionInternalServerError) ToJSONString() string {
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

func (o *AdminSyncNativeSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncNativeSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
