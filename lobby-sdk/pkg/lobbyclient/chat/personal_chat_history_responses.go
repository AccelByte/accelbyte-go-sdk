// Code generated by go-swagger; DO NOT EDIT.

package chat

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

// PersonalChatHistoryReader is a Reader for the PersonalChatHistory structure.
type PersonalChatHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PersonalChatHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPersonalChatHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPersonalChatHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPersonalChatHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPersonalChatHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPersonalChatHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPersonalChatHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPersonalChatHistoryOK creates a PersonalChatHistoryOK with default headers values
func NewPersonalChatHistoryOK() *PersonalChatHistoryOK {
	return &PersonalChatHistoryOK{}
}

/*PersonalChatHistoryOK handles this case with default header values.

  OK
*/
type PersonalChatHistoryOK struct {
	Payload []*lobbyclientmodels.ModelChatMessageResponse
}

func (o *PersonalChatHistoryOK) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryOK  %+v", 200, o.Payload)
}

func (o *PersonalChatHistoryOK) GetPayload() []*lobbyclientmodels.ModelChatMessageResponse {
	return o.Payload
}

func (o *PersonalChatHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryBadRequest creates a PersonalChatHistoryBadRequest with default headers values
func NewPersonalChatHistoryBadRequest() *PersonalChatHistoryBadRequest {
	return &PersonalChatHistoryBadRequest{}
}

/*PersonalChatHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type PersonalChatHistoryBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryBadRequest  %+v", 400, o.Payload)
}

func (o *PersonalChatHistoryBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryUnauthorized creates a PersonalChatHistoryUnauthorized with default headers values
func NewPersonalChatHistoryUnauthorized() *PersonalChatHistoryUnauthorized {
	return &PersonalChatHistoryUnauthorized{}
}

/*PersonalChatHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type PersonalChatHistoryUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryUnauthorized  %+v", 401, o.Payload)
}

func (o *PersonalChatHistoryUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryForbidden creates a PersonalChatHistoryForbidden with default headers values
func NewPersonalChatHistoryForbidden() *PersonalChatHistoryForbidden {
	return &PersonalChatHistoryForbidden{}
}

/*PersonalChatHistoryForbidden handles this case with default header values.

  Forbidden
*/
type PersonalChatHistoryForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryForbidden  %+v", 403, o.Payload)
}

func (o *PersonalChatHistoryForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryNotFound creates a PersonalChatHistoryNotFound with default headers values
func NewPersonalChatHistoryNotFound() *PersonalChatHistoryNotFound {
	return &PersonalChatHistoryNotFound{}
}

/*PersonalChatHistoryNotFound handles this case with default header values.

  Not Found
*/
type PersonalChatHistoryNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryNotFound  %+v", 404, o.Payload)
}

func (o *PersonalChatHistoryNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryInternalServerError creates a PersonalChatHistoryInternalServerError with default headers values
func NewPersonalChatHistoryInternalServerError() *PersonalChatHistoryInternalServerError {
	return &PersonalChatHistoryInternalServerError{}
}

/*PersonalChatHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PersonalChatHistoryInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryInternalServerError  %+v", 500, o.Payload)
}

func (o *PersonalChatHistoryInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
