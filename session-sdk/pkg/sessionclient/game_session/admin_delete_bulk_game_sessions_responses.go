// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// AdminDeleteBulkGameSessionsReader is a Reader for the AdminDeleteBulkGameSessions structure.
type AdminDeleteBulkGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteBulkGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteBulkGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteBulkGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteBulkGameSessionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteBulkGameSessionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteBulkGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteBulkGameSessionsOK creates a AdminDeleteBulkGameSessionsOK with default headers values
func NewAdminDeleteBulkGameSessionsOK() *AdminDeleteBulkGameSessionsOK {
	return &AdminDeleteBulkGameSessionsOK{}
}

/*AdminDeleteBulkGameSessionsOK handles this case with default header values.

  OK
*/
type AdminDeleteBulkGameSessionsOK struct {
	Payload *sessionclientmodels.ApimodelsDeleteBulkGameSessionsAPIResponse
}

func (o *AdminDeleteBulkGameSessionsOK) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk][%d] adminDeleteBulkGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDeleteBulkGameSessionsOK) ToJSONString() string {
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

func (o *AdminDeleteBulkGameSessionsOK) GetPayload() *sessionclientmodels.ApimodelsDeleteBulkGameSessionsAPIResponse {
	return o.Payload
}

func (o *AdminDeleteBulkGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsDeleteBulkGameSessionsAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteBulkGameSessionsBadRequest creates a AdminDeleteBulkGameSessionsBadRequest with default headers values
func NewAdminDeleteBulkGameSessionsBadRequest() *AdminDeleteBulkGameSessionsBadRequest {
	return &AdminDeleteBulkGameSessionsBadRequest{}
}

/*AdminDeleteBulkGameSessionsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteBulkGameSessionsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk][%d] adminDeleteBulkGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteBulkGameSessionsBadRequest) ToJSONString() string {
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

func (o *AdminDeleteBulkGameSessionsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteBulkGameSessionsUnauthorized creates a AdminDeleteBulkGameSessionsUnauthorized with default headers values
func NewAdminDeleteBulkGameSessionsUnauthorized() *AdminDeleteBulkGameSessionsUnauthorized {
	return &AdminDeleteBulkGameSessionsUnauthorized{}
}

/*AdminDeleteBulkGameSessionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteBulkGameSessionsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkGameSessionsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk][%d] adminDeleteBulkGameSessionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteBulkGameSessionsUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteBulkGameSessionsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkGameSessionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteBulkGameSessionsForbidden creates a AdminDeleteBulkGameSessionsForbidden with default headers values
func NewAdminDeleteBulkGameSessionsForbidden() *AdminDeleteBulkGameSessionsForbidden {
	return &AdminDeleteBulkGameSessionsForbidden{}
}

/*AdminDeleteBulkGameSessionsForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteBulkGameSessionsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkGameSessionsForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk][%d] adminDeleteBulkGameSessionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteBulkGameSessionsForbidden) ToJSONString() string {
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

func (o *AdminDeleteBulkGameSessionsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkGameSessionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteBulkGameSessionsInternalServerError creates a AdminDeleteBulkGameSessionsInternalServerError with default headers values
func NewAdminDeleteBulkGameSessionsInternalServerError() *AdminDeleteBulkGameSessionsInternalServerError {
	return &AdminDeleteBulkGameSessionsInternalServerError{}
}

/*AdminDeleteBulkGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteBulkGameSessionsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/bulk][%d] adminDeleteBulkGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteBulkGameSessionsInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteBulkGameSessionsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
