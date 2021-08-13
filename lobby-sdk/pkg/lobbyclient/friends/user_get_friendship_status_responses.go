// Code generated by go-swagger; DO NOT EDIT.

package friends

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// UserGetFriendshipStatusReader is a Reader for the UserGetFriendshipStatus structure.
type UserGetFriendshipStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserGetFriendshipStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUserGetFriendshipStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserGetFriendshipStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserGetFriendshipStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserGetFriendshipStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserGetFriendshipStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/status/{friendId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserGetFriendshipStatusOK creates a UserGetFriendshipStatusOK with default headers values
func NewUserGetFriendshipStatusOK() *UserGetFriendshipStatusOK {
	return &UserGetFriendshipStatusOK{}
}

/*UserGetFriendshipStatusOK handles this case with default header values.

  OK
*/
type UserGetFriendshipStatusOK struct {
	Payload *lobbyclientmodels.ModelUserGetFriendshipStatusResponse
}

func (o *UserGetFriendshipStatusOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/status/{friendId}][%d] userGetFriendshipStatusOK  %+v", 200, o.Payload)
}

func (o *UserGetFriendshipStatusOK) GetPayload() *lobbyclientmodels.ModelUserGetFriendshipStatusResponse {
	return o.Payload
}

func (o *UserGetFriendshipStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.ModelUserGetFriendshipStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserGetFriendshipStatusBadRequest creates a UserGetFriendshipStatusBadRequest with default headers values
func NewUserGetFriendshipStatusBadRequest() *UserGetFriendshipStatusBadRequest {
	return &UserGetFriendshipStatusBadRequest{}
}

/*UserGetFriendshipStatusBadRequest handles this case with default header values.

  Bad Request
*/
type UserGetFriendshipStatusBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserGetFriendshipStatusBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/status/{friendId}][%d] userGetFriendshipStatusBadRequest  %+v", 400, o.Payload)
}

func (o *UserGetFriendshipStatusBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserGetFriendshipStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserGetFriendshipStatusUnauthorized creates a UserGetFriendshipStatusUnauthorized with default headers values
func NewUserGetFriendshipStatusUnauthorized() *UserGetFriendshipStatusUnauthorized {
	return &UserGetFriendshipStatusUnauthorized{}
}

/*UserGetFriendshipStatusUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserGetFriendshipStatusUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserGetFriendshipStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/status/{friendId}][%d] userGetFriendshipStatusUnauthorized  %+v", 401, o.Payload)
}

func (o *UserGetFriendshipStatusUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserGetFriendshipStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserGetFriendshipStatusForbidden creates a UserGetFriendshipStatusForbidden with default headers values
func NewUserGetFriendshipStatusForbidden() *UserGetFriendshipStatusForbidden {
	return &UserGetFriendshipStatusForbidden{}
}

/*UserGetFriendshipStatusForbidden handles this case with default header values.

  Forbidden
*/
type UserGetFriendshipStatusForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserGetFriendshipStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/status/{friendId}][%d] userGetFriendshipStatusForbidden  %+v", 403, o.Payload)
}

func (o *UserGetFriendshipStatusForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserGetFriendshipStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserGetFriendshipStatusInternalServerError creates a UserGetFriendshipStatusInternalServerError with default headers values
func NewUserGetFriendshipStatusInternalServerError() *UserGetFriendshipStatusInternalServerError {
	return &UserGetFriendshipStatusInternalServerError{}
}

/*UserGetFriendshipStatusInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserGetFriendshipStatusInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserGetFriendshipStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/status/{friendId}][%d] userGetFriendshipStatusInternalServerError  %+v", 500, o.Payload)
}

func (o *UserGetFriendshipStatusInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserGetFriendshipStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
