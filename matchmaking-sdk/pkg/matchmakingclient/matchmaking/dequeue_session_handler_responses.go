// Code generated by go-swagger; DO NOT EDIT.

package matchmaking

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"main/pkg/matchmakingclientmodels"
)

// DequeueSessionHandlerReader is a Reader for the DequeueSessionHandler structure.
type DequeueSessionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DequeueSessionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDequeueSessionHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDequeueSessionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDequeueSessionHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDequeueSessionHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDequeueSessionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDequeueSessionHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/namespaces/{namespace}/sessions/dequeue returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDequeueSessionHandlerNoContent creates a DequeueSessionHandlerNoContent with default headers values
func NewDequeueSessionHandlerNoContent() *DequeueSessionHandlerNoContent {
	return &DequeueSessionHandlerNoContent{}
}

/*DequeueSessionHandlerNoContent handles this case with default header values.

  No Content
*/
type DequeueSessionHandlerNoContent struct {
}

func (o *DequeueSessionHandlerNoContent) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerNoContent ", 204)
}

func (o *DequeueSessionHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDequeueSessionHandlerBadRequest creates a DequeueSessionHandlerBadRequest with default headers values
func NewDequeueSessionHandlerBadRequest() *DequeueSessionHandlerBadRequest {
	return &DequeueSessionHandlerBadRequest{}
}

/*DequeueSessionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type DequeueSessionHandlerBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DequeueSessionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerBadRequest  %+v", 400, o.Payload)
}

func (o *DequeueSessionHandlerBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DequeueSessionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDequeueSessionHandlerUnauthorized creates a DequeueSessionHandlerUnauthorized with default headers values
func NewDequeueSessionHandlerUnauthorized() *DequeueSessionHandlerUnauthorized {
	return &DequeueSessionHandlerUnauthorized{}
}

/*DequeueSessionHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type DequeueSessionHandlerUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DequeueSessionHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerUnauthorized  %+v", 401, o.Payload)
}

func (o *DequeueSessionHandlerUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DequeueSessionHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDequeueSessionHandlerForbidden creates a DequeueSessionHandlerForbidden with default headers values
func NewDequeueSessionHandlerForbidden() *DequeueSessionHandlerForbidden {
	return &DequeueSessionHandlerForbidden{}
}

/*DequeueSessionHandlerForbidden handles this case with default header values.

  Forbidden
*/
type DequeueSessionHandlerForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DequeueSessionHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerForbidden  %+v", 403, o.Payload)
}

func (o *DequeueSessionHandlerForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DequeueSessionHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDequeueSessionHandlerNotFound creates a DequeueSessionHandlerNotFound with default headers values
func NewDequeueSessionHandlerNotFound() *DequeueSessionHandlerNotFound {
	return &DequeueSessionHandlerNotFound{}
}

/*DequeueSessionHandlerNotFound handles this case with default header values.

  Not Found
*/
type DequeueSessionHandlerNotFound struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DequeueSessionHandlerNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerNotFound  %+v", 404, o.Payload)
}

func (o *DequeueSessionHandlerNotFound) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DequeueSessionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDequeueSessionHandlerInternalServerError creates a DequeueSessionHandlerInternalServerError with default headers values
func NewDequeueSessionHandlerInternalServerError() *DequeueSessionHandlerInternalServerError {
	return &DequeueSessionHandlerInternalServerError{}
}

/*DequeueSessionHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DequeueSessionHandlerInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DequeueSessionHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/sessions/dequeue][%d] dequeueSessionHandlerInternalServerError  %+v", 500, o.Payload)
}

func (o *DequeueSessionHandlerInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DequeueSessionHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
