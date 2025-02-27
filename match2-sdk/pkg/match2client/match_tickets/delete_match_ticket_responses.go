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

// DeleteMatchTicketReader is a Reader for the DeleteMatchTicket structure.
type DeleteMatchTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMatchTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteMatchTicketNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMatchTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMatchTicketForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMatchTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 406:
		result := NewDeleteMatchTicketNotAcceptable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMatchTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMatchTicketNoContent creates a DeleteMatchTicketNoContent with default headers values
func NewDeleteMatchTicketNoContent() *DeleteMatchTicketNoContent {
	return &DeleteMatchTicketNoContent{}
}

/*DeleteMatchTicketNoContent handles this case with default header values.

  No Content
*/
type DeleteMatchTicketNoContent struct {
}

func (o *DeleteMatchTicketNoContent) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketNoContent ", 204)
}

func (o *DeleteMatchTicketNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMatchTicketUnauthorized creates a DeleteMatchTicketUnauthorized with default headers values
func NewDeleteMatchTicketUnauthorized() *DeleteMatchTicketUnauthorized {
	return &DeleteMatchTicketUnauthorized{}
}

/*DeleteMatchTicketUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteMatchTicketUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchTicketUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMatchTicketUnauthorized) ToJSONString() string {
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

func (o *DeleteMatchTicketUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchTicketForbidden creates a DeleteMatchTicketForbidden with default headers values
func NewDeleteMatchTicketForbidden() *DeleteMatchTicketForbidden {
	return &DeleteMatchTicketForbidden{}
}

/*DeleteMatchTicketForbidden handles this case with default header values.

  Forbidden
*/
type DeleteMatchTicketForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchTicketForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMatchTicketForbidden) ToJSONString() string {
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

func (o *DeleteMatchTicketForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchTicketForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchTicketNotFound creates a DeleteMatchTicketNotFound with default headers values
func NewDeleteMatchTicketNotFound() *DeleteMatchTicketNotFound {
	return &DeleteMatchTicketNotFound{}
}

/*DeleteMatchTicketNotFound handles this case with default header values.

  Not Found
*/
type DeleteMatchTicketNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchTicketNotFound) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMatchTicketNotFound) ToJSONString() string {
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

func (o *DeleteMatchTicketNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchTicketNotAcceptable creates a DeleteMatchTicketNotAcceptable with default headers values
func NewDeleteMatchTicketNotAcceptable() *DeleteMatchTicketNotAcceptable {
	return &DeleteMatchTicketNotAcceptable{}
}

/*DeleteMatchTicketNotAcceptable handles this case with default header values.

  Not Acceptable
*/
type DeleteMatchTicketNotAcceptable struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchTicketNotAcceptable) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketNotAcceptable  %+v", 406, o.ToJSONString())
}

func (o *DeleteMatchTicketNotAcceptable) ToJSONString() string {
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

func (o *DeleteMatchTicketNotAcceptable) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchTicketNotAcceptable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchTicketInternalServerError creates a DeleteMatchTicketInternalServerError with default headers values
func NewDeleteMatchTicketInternalServerError() *DeleteMatchTicketInternalServerError {
	return &DeleteMatchTicketInternalServerError{}
}

/*DeleteMatchTicketInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMatchTicketInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchTicketInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] deleteMatchTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMatchTicketInternalServerError) ToJSONString() string {
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

func (o *DeleteMatchTicketInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
