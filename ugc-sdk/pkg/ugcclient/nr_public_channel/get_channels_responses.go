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

// GetChannelsReader is a Reader for the GetChannels structure.
type GetChannelsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetChannelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetChannelsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetChannelsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetChannelsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetChannelsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetChannelsOK creates a GetChannelsOK with default headers values
func NewGetChannelsOK() *GetChannelsOK {
	return &GetChannelsOK{}
}

/*GetChannelsOK handles this case with default header values.

  OK
*/
type GetChannelsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGetChannelResponse
}

func (o *GetChannelsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels][%d] getChannelsOK  %+v", 200, o.Payload)
}

func (o *GetChannelsOK) GetPayload() *ugcclientmodels.ModelsPaginatedGetChannelResponse {
	return o.Payload
}

func (o *GetChannelsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedGetChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetChannelsUnauthorized creates a GetChannelsUnauthorized with default headers values
func NewGetChannelsUnauthorized() *GetChannelsUnauthorized {
	return &GetChannelsUnauthorized{}
}

/*GetChannelsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetChannelsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetChannelsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels][%d] getChannelsUnauthorized  %+v", 401, o.Payload)
}

func (o *GetChannelsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetChannelsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetChannelsNotFound creates a GetChannelsNotFound with default headers values
func NewGetChannelsNotFound() *GetChannelsNotFound {
	return &GetChannelsNotFound{}
}

/*GetChannelsNotFound handles this case with default header values.

  Not Found
*/
type GetChannelsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetChannelsNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels][%d] getChannelsNotFound  %+v", 404, o.Payload)
}

func (o *GetChannelsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetChannelsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetChannelsInternalServerError creates a GetChannelsInternalServerError with default headers values
func NewGetChannelsInternalServerError() *GetChannelsInternalServerError {
	return &GetChannelsInternalServerError{}
}

/*GetChannelsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetChannelsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetChannelsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels][%d] getChannelsInternalServerError  %+v", 500, o.Payload)
}

func (o *GetChannelsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetChannelsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}