// Code generated by go-swagger; DO NOT EDIT.

package nr_public_channel

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// DeleteChannelReader is a Reader for the DeleteChannel structure.
type DeleteChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteChannelOK creates a DeleteChannelOK with default headers values
func NewDeleteChannelOK() *DeleteChannelOK {
	return &DeleteChannelOK{}
}

/*DeleteChannelOK handles this case with default header values.

  OK
*/
type DeleteChannelOK struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *DeleteChannelOK) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] deleteChannelOK  %+v", 200, o.Payload)
}

func (o *DeleteChannelOK) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *DeleteChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteChannelUnauthorized creates a DeleteChannelUnauthorized with default headers values
func NewDeleteChannelUnauthorized() *DeleteChannelUnauthorized {
	return &DeleteChannelUnauthorized{}
}

/*DeleteChannelUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteChannelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] deleteChannelUnauthorized  %+v", 401, o.Payload)
}

func (o *DeleteChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteChannelNotFound creates a DeleteChannelNotFound with default headers values
func NewDeleteChannelNotFound() *DeleteChannelNotFound {
	return &DeleteChannelNotFound{}
}

/*DeleteChannelNotFound handles this case with default header values.

  Not Found
*/
type DeleteChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteChannelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] deleteChannelNotFound  %+v", 404, o.Payload)
}

func (o *DeleteChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteChannelInternalServerError creates a DeleteChannelInternalServerError with default headers values
func NewDeleteChannelInternalServerError() *DeleteChannelInternalServerError {
	return &DeleteChannelInternalServerError{}
}

/*DeleteChannelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteChannelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] deleteChannelInternalServerError  %+v", 500, o.Payload)
}

func (o *DeleteChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
