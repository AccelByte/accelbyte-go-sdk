// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// GetMyMatchTicketsReader is a Reader for the GetMyMatchTickets structure.
type GetMyMatchTicketsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyMatchTicketsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyMatchTicketsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyMatchTicketsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyMatchTicketsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMyMatchTicketsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-tickets/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyMatchTicketsOK creates a GetMyMatchTicketsOK with default headers values
func NewGetMyMatchTicketsOK() *GetMyMatchTicketsOK {
	return &GetMyMatchTicketsOK{}
}

/*GetMyMatchTicketsOK handles this case with default header values.

  OK
*/
type GetMyMatchTicketsOK struct {
	Payload *match2clientmodels.APIMatchTicketStatuses
}

func (o *GetMyMatchTicketsOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/me][%d] getMyMatchTicketsOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyMatchTicketsOK) ToJSONString() string {
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

func (o *GetMyMatchTicketsOK) GetPayload() *match2clientmodels.APIMatchTicketStatuses {
	return o.Payload
}

func (o *GetMyMatchTicketsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchTicketStatuses)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyMatchTicketsUnauthorized creates a GetMyMatchTicketsUnauthorized with default headers values
func NewGetMyMatchTicketsUnauthorized() *GetMyMatchTicketsUnauthorized {
	return &GetMyMatchTicketsUnauthorized{}
}

/*GetMyMatchTicketsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetMyMatchTicketsUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetMyMatchTicketsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/me][%d] getMyMatchTicketsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyMatchTicketsUnauthorized) ToJSONString() string {
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

func (o *GetMyMatchTicketsUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetMyMatchTicketsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyMatchTicketsForbidden creates a GetMyMatchTicketsForbidden with default headers values
func NewGetMyMatchTicketsForbidden() *GetMyMatchTicketsForbidden {
	return &GetMyMatchTicketsForbidden{}
}

/*GetMyMatchTicketsForbidden handles this case with default header values.

  Forbidden
*/
type GetMyMatchTicketsForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetMyMatchTicketsForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/me][%d] getMyMatchTicketsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyMatchTicketsForbidden) ToJSONString() string {
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

func (o *GetMyMatchTicketsForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetMyMatchTicketsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyMatchTicketsInternalServerError creates a GetMyMatchTicketsInternalServerError with default headers values
func NewGetMyMatchTicketsInternalServerError() *GetMyMatchTicketsInternalServerError {
	return &GetMyMatchTicketsInternalServerError{}
}

/*GetMyMatchTicketsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMyMatchTicketsInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetMyMatchTicketsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/me][%d] getMyMatchTicketsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMyMatchTicketsInternalServerError) ToJSONString() string {
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

func (o *GetMyMatchTicketsInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetMyMatchTicketsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
