// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// AdminDeleteSessionReader is a Reader for the AdminDeleteSession structure.
type AdminDeleteSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteSessionOK creates a AdminDeleteSessionOK with default headers values
func NewAdminDeleteSessionOK() *AdminDeleteSessionOK {
	return &AdminDeleteSessionOK{}
}

/*AdminDeleteSessionOK handles this case with default header values.

  session deleted
*/
type AdminDeleteSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsAdminSessionResponse
}

func (o *AdminDeleteSessionOK) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminDeleteSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDeleteSessionOK) ToJSONString() string {
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

func (o *AdminDeleteSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsAdminSessionResponse {
	return o.Payload
}

func (o *AdminDeleteSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsAdminSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteSessionBadRequest creates a AdminDeleteSessionBadRequest with default headers values
func NewAdminDeleteSessionBadRequest() *AdminDeleteSessionBadRequest {
	return &AdminDeleteSessionBadRequest{}
}

/*AdminDeleteSessionBadRequest handles this case with default header values.

  malformed request
*/
type AdminDeleteSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminDeleteSessionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminDeleteSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteSessionBadRequest) ToJSONString() string {
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

func (o *AdminDeleteSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminDeleteSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteSessionNotFound creates a AdminDeleteSessionNotFound with default headers values
func NewAdminDeleteSessionNotFound() *AdminDeleteSessionNotFound {
	return &AdminDeleteSessionNotFound{}
}

/*AdminDeleteSessionNotFound handles this case with default header values.

  session not found
*/
type AdminDeleteSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminDeleteSessionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminDeleteSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteSessionNotFound) ToJSONString() string {
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

func (o *AdminDeleteSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminDeleteSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteSessionInternalServerError creates a AdminDeleteSessionInternalServerError with default headers values
func NewAdminDeleteSessionInternalServerError() *AdminDeleteSessionInternalServerError {
	return &AdminDeleteSessionInternalServerError{}
}

/*AdminDeleteSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminDeleteSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminDeleteSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteSessionInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminDeleteSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
