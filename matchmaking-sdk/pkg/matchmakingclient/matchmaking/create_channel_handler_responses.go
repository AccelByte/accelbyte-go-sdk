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

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// CreateChannelHandlerReader is a Reader for the CreateChannelHandler structure.
type CreateChannelHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateChannelHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateChannelHandlerCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateChannelHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateChannelHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateChannelHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateChannelHandlerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateChannelHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/namespaces/{namespace}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateChannelHandlerCreated creates a CreateChannelHandlerCreated with default headers values
func NewCreateChannelHandlerCreated() *CreateChannelHandlerCreated {
	return &CreateChannelHandlerCreated{}
}

/*CreateChannelHandlerCreated handles this case with default header values.

  Created
*/
type CreateChannelHandlerCreated struct {
	Payload *matchmakingclientmodels.ModelsCreateChannelResponse
}

func (o *CreateChannelHandlerCreated) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerCreated  %+v", 201, o.Payload)
}

func (o *CreateChannelHandlerCreated) GetPayload() *matchmakingclientmodels.ModelsCreateChannelResponse {
	return o.Payload
}

func (o *CreateChannelHandlerCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ModelsCreateChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateChannelHandlerBadRequest creates a CreateChannelHandlerBadRequest with default headers values
func NewCreateChannelHandlerBadRequest() *CreateChannelHandlerBadRequest {
	return &CreateChannelHandlerBadRequest{}
}

/*CreateChannelHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type CreateChannelHandlerBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *CreateChannelHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerBadRequest  %+v", 400, o.Payload)
}

func (o *CreateChannelHandlerBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateChannelHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateChannelHandlerUnauthorized creates a CreateChannelHandlerUnauthorized with default headers values
func NewCreateChannelHandlerUnauthorized() *CreateChannelHandlerUnauthorized {
	return &CreateChannelHandlerUnauthorized{}
}

/*CreateChannelHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateChannelHandlerUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *CreateChannelHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerUnauthorized  %+v", 401, o.Payload)
}

func (o *CreateChannelHandlerUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateChannelHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateChannelHandlerForbidden creates a CreateChannelHandlerForbidden with default headers values
func NewCreateChannelHandlerForbidden() *CreateChannelHandlerForbidden {
	return &CreateChannelHandlerForbidden{}
}

/*CreateChannelHandlerForbidden handles this case with default header values.

  Forbidden
*/
type CreateChannelHandlerForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *CreateChannelHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerForbidden  %+v", 403, o.Payload)
}

func (o *CreateChannelHandlerForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateChannelHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateChannelHandlerConflict creates a CreateChannelHandlerConflict with default headers values
func NewCreateChannelHandlerConflict() *CreateChannelHandlerConflict {
	return &CreateChannelHandlerConflict{}
}

/*CreateChannelHandlerConflict handles this case with default header values.

  Conflict
*/
type CreateChannelHandlerConflict struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *CreateChannelHandlerConflict) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerConflict  %+v", 409, o.Payload)
}

func (o *CreateChannelHandlerConflict) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateChannelHandlerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateChannelHandlerInternalServerError creates a CreateChannelHandlerInternalServerError with default headers values
func NewCreateChannelHandlerInternalServerError() *CreateChannelHandlerInternalServerError {
	return &CreateChannelHandlerInternalServerError{}
}

/*CreateChannelHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateChannelHandlerInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *CreateChannelHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/channels][%d] createChannelHandlerInternalServerError  %+v", 500, o.Payload)
}

func (o *CreateChannelHandlerInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateChannelHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}