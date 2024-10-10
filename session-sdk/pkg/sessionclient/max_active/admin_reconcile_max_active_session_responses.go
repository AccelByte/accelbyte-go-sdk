// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package max_active

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

// AdminReconcileMaxActiveSessionReader is a Reader for the AdminReconcileMaxActiveSession structure.
type AdminReconcileMaxActiveSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminReconcileMaxActiveSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminReconcileMaxActiveSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminReconcileMaxActiveSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminReconcileMaxActiveSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminReconcileMaxActiveSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminReconcileMaxActiveSessionOK creates a AdminReconcileMaxActiveSessionOK with default headers values
func NewAdminReconcileMaxActiveSessionOK() *AdminReconcileMaxActiveSessionOK {
	return &AdminReconcileMaxActiveSessionOK{}
}

/*AdminReconcileMaxActiveSessionOK handles this case with default header values.

  OK
*/
type AdminReconcileMaxActiveSessionOK struct {
}

func (o *AdminReconcileMaxActiveSessionOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile][%d] adminReconcileMaxActiveSessionOK ", 200)
}

func (o *AdminReconcileMaxActiveSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminReconcileMaxActiveSessionBadRequest creates a AdminReconcileMaxActiveSessionBadRequest with default headers values
func NewAdminReconcileMaxActiveSessionBadRequest() *AdminReconcileMaxActiveSessionBadRequest {
	return &AdminReconcileMaxActiveSessionBadRequest{}
}

/*AdminReconcileMaxActiveSessionBadRequest handles this case with default header values.

  Bad Request
*/
type AdminReconcileMaxActiveSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReconcileMaxActiveSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile][%d] adminReconcileMaxActiveSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminReconcileMaxActiveSessionBadRequest) ToJSONString() string {
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

func (o *AdminReconcileMaxActiveSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReconcileMaxActiveSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReconcileMaxActiveSessionUnauthorized creates a AdminReconcileMaxActiveSessionUnauthorized with default headers values
func NewAdminReconcileMaxActiveSessionUnauthorized() *AdminReconcileMaxActiveSessionUnauthorized {
	return &AdminReconcileMaxActiveSessionUnauthorized{}
}

/*AdminReconcileMaxActiveSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminReconcileMaxActiveSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReconcileMaxActiveSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile][%d] adminReconcileMaxActiveSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminReconcileMaxActiveSessionUnauthorized) ToJSONString() string {
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

func (o *AdminReconcileMaxActiveSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReconcileMaxActiveSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReconcileMaxActiveSessionInternalServerError creates a AdminReconcileMaxActiveSessionInternalServerError with default headers values
func NewAdminReconcileMaxActiveSessionInternalServerError() *AdminReconcileMaxActiveSessionInternalServerError {
	return &AdminReconcileMaxActiveSessionInternalServerError{}
}

/*AdminReconcileMaxActiveSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminReconcileMaxActiveSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReconcileMaxActiveSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile][%d] adminReconcileMaxActiveSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminReconcileMaxActiveSessionInternalServerError) ToJSONString() string {
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

func (o *AdminReconcileMaxActiveSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReconcileMaxActiveSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
