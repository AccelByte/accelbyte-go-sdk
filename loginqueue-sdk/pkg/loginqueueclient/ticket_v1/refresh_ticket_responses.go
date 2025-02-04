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

// RefreshTicketReader is a Reader for the RefreshTicket structure.
type RefreshTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RefreshTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRefreshTicketOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRefreshTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRefreshTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /login-queue/v1/namespaces/{namespace}/ticket returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRefreshTicketOK creates a RefreshTicketOK with default headers values
func NewRefreshTicketOK() *RefreshTicketOK {
	return &RefreshTicketOK{}
}

/*RefreshTicketOK handles this case with default header values.

  OK
*/
type RefreshTicketOK struct {
	Payload *loginqueueclientmodels.ApimodelsRefreshTicketResponse
}

func (o *RefreshTicketOK) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/namespaces/{namespace}/ticket][%d] refreshTicketOK  %+v", 200, o.ToJSONString())
}

func (o *RefreshTicketOK) ToJSONString() string {
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

func (o *RefreshTicketOK) GetPayload() *loginqueueclientmodels.ApimodelsRefreshTicketResponse {
	return o.Payload
}

func (o *RefreshTicketOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ApimodelsRefreshTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRefreshTicketUnauthorized creates a RefreshTicketUnauthorized with default headers values
func NewRefreshTicketUnauthorized() *RefreshTicketUnauthorized {
	return &RefreshTicketUnauthorized{}
}

/*RefreshTicketUnauthorized handles this case with default header values.

  Unauthorized
*/
type RefreshTicketUnauthorized struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *RefreshTicketUnauthorized) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/namespaces/{namespace}/ticket][%d] refreshTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RefreshTicketUnauthorized) ToJSONString() string {
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

func (o *RefreshTicketUnauthorized) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *RefreshTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRefreshTicketInternalServerError creates a RefreshTicketInternalServerError with default headers values
func NewRefreshTicketInternalServerError() *RefreshTicketInternalServerError {
	return &RefreshTicketInternalServerError{}
}

/*RefreshTicketInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RefreshTicketInternalServerError struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *RefreshTicketInternalServerError) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/namespaces/{namespace}/ticket][%d] refreshTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RefreshTicketInternalServerError) ToJSONString() string {
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

func (o *RefreshTicketInternalServerError) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *RefreshTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
