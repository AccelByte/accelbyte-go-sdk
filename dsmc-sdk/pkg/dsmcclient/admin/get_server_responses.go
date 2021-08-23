// Code generated by go-swagger; DO NOT EDIT.

package admin

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// GetServerReader is a Reader for the GetServer structure.
type GetServerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetServerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetServerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetServerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 404:
		result := NewGetServerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 500:
		result := NewGetServerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result

	default:
		return nil, runtime.NewAPIError("response status code does not match any response statuses defined for this endpoint in the swagger spec", response, response.Code())
	}
}

// NewGetServerOK creates a GetServerOK with default headers values
func NewGetServerOK() *GetServerOK {
	return &GetServerOK{}
}

/*GetServerOK handles this case with default header values.

server queried
*/
type GetServerOK struct {
	Payload *dsmcclientmodels.ModelsServer
}

func (o *GetServerOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}][%d] getServerOK  %+v", 200, o.Payload)
}

func (o *GetServerOK) GetPayload() *dsmcclientmodels.ModelsServer {
	return o.Payload
}

func (o *GetServerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(dsmcclientmodels.ModelsServer)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerUnauthorized creates a GetServerUnauthorized with default headers values
func NewGetServerUnauthorized() *GetServerUnauthorized {
	return &GetServerUnauthorized{}
}

/*GetServerUnauthorized handles this case with default header values.

Unauthorized
*/
type GetServerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}][%d] getServerUnauthorized  %+v", 401, o.Payload)
}

func (o *GetServerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerNotFound creates a GetServerNotFound with default headers values
func NewGetServerNotFound() *GetServerNotFound {
	return &GetServerNotFound{}
}

/*GetServerNotFound handles this case with default header values.

server not found
*/
type GetServerNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}][%d] getServerNotFound  %+v", 404, o.Payload)
}

func (o *GetServerNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerInternalServerError creates a GetServerInternalServerError with default headers values
func NewGetServerInternalServerError() *GetServerInternalServerError {
	return &GetServerInternalServerError{}
}

/*GetServerInternalServerError handles this case with default header values.

Internal Server Error
*/
type GetServerInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}][%d] getServerInternalServerError  %+v", 500, o.Payload)
}

func (o *GetServerInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}