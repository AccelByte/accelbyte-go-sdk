// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_channel

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

// AdminDeleteChannelReader is a Reader for the AdminDeleteChannel structure.
type AdminDeleteChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteChannelOK creates a AdminDeleteChannelOK with default headers values
func NewAdminDeleteChannelOK() *AdminDeleteChannelOK {
	return &AdminDeleteChannelOK{}
}

/*AdminDeleteChannelOK handles this case with default header values.

  OK
*/
type AdminDeleteChannelOK struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *AdminDeleteChannelOK) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminDeleteChannelOK  %+v", 200, o.Payload)
}

func (o *AdminDeleteChannelOK) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *AdminDeleteChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChannelUnauthorized creates a AdminDeleteChannelUnauthorized with default headers values
func NewAdminDeleteChannelUnauthorized() *AdminDeleteChannelUnauthorized {
	return &AdminDeleteChannelUnauthorized{}
}

/*AdminDeleteChannelUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteChannelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminDeleteChannelUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminDeleteChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChannelNotFound creates a AdminDeleteChannelNotFound with default headers values
func NewAdminDeleteChannelNotFound() *AdminDeleteChannelNotFound {
	return &AdminDeleteChannelNotFound{}
}

/*AdminDeleteChannelNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteChannelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminDeleteChannelNotFound  %+v", 404, o.Payload)
}

func (o *AdminDeleteChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChannelInternalServerError creates a AdminDeleteChannelInternalServerError with default headers values
func NewAdminDeleteChannelInternalServerError() *AdminDeleteChannelInternalServerError {
	return &AdminDeleteChannelInternalServerError{}
}

/*AdminDeleteChannelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteChannelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminDeleteChannelInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminDeleteChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}