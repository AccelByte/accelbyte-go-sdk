// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ticket_v1

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclientmodels"
)

// CancelTicketReader is a Reader for the CancelTicket structure.
type CancelTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CancelTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCancelTicketNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCancelTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCancelTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /login-queue/v1/namespaces/{namespace}/ticket returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCancelTicketNoContent creates a CancelTicketNoContent with default headers values
func NewCancelTicketNoContent() *CancelTicketNoContent {
	return &CancelTicketNoContent{}
}

/*
CancelTicketNoContent handles this case with default header values.

	No Content
*/
type CancelTicketNoContent struct {
}

func (o *CancelTicketNoContent) Error() string {
	return fmt.Sprintf("[DELETE /login-queue/v1/namespaces/{namespace}/ticket][%d] cancelTicketNoContent ", 204)
}

func (o *CancelTicketNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCancelTicketUnauthorized creates a CancelTicketUnauthorized with default headers values
func NewCancelTicketUnauthorized() *CancelTicketUnauthorized {
	return &CancelTicketUnauthorized{}
}

/*
CancelTicketUnauthorized handles this case with default header values.

	Unauthorized
*/
type CancelTicketUnauthorized struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *CancelTicketUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /login-queue/v1/namespaces/{namespace}/ticket][%d] cancelTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CancelTicketUnauthorized) ToJSONString() string {
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

func (o *CancelTicketUnauthorized) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCancelTicketInternalServerError creates a CancelTicketInternalServerError with default headers values
func NewCancelTicketInternalServerError() *CancelTicketInternalServerError {
	return &CancelTicketInternalServerError{}
}

/*
CancelTicketInternalServerError handles this case with default header values.

	Internal Server Error
*/
type CancelTicketInternalServerError struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *CancelTicketInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /login-queue/v1/namespaces/{namespace}/ticket][%d] cancelTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CancelTicketInternalServerError) ToJSONString() string {
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

func (o *CancelTicketInternalServerError) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
