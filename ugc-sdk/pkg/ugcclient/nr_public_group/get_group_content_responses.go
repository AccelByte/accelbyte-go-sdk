// Code generated by go-swagger; DO NOT EDIT.

package nr_public_group

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

// GetGroupContentReader is a Reader for the GetGroupContent structure.
type GetGroupContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGroupContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupContentOK creates a GetGroupContentOK with default headers values
func NewGetGroupContentOK() *GetGroupContentOK {
	return &GetGroupContentOK{}
}

/*GetGroupContentOK handles this case with default header values.

  OK
*/
type GetGroupContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *GetGroupContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] getGroupContentOK  %+v", 200, o.Payload)
}

func (o *GetGroupContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *GetGroupContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupContentUnauthorized creates a GetGroupContentUnauthorized with default headers values
func NewGetGroupContentUnauthorized() *GetGroupContentUnauthorized {
	return &GetGroupContentUnauthorized{}
}

/*GetGroupContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetGroupContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetGroupContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] getGroupContentUnauthorized  %+v", 401, o.Payload)
}

func (o *GetGroupContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGroupContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupContentNotFound creates a GetGroupContentNotFound with default headers values
func NewGetGroupContentNotFound() *GetGroupContentNotFound {
	return &GetGroupContentNotFound{}
}

/*GetGroupContentNotFound handles this case with default header values.

  Not Found
*/
type GetGroupContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetGroupContentNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] getGroupContentNotFound  %+v", 404, o.Payload)
}

func (o *GetGroupContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGroupContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupContentInternalServerError creates a GetGroupContentInternalServerError with default headers values
func NewGetGroupContentInternalServerError() *GetGroupContentInternalServerError {
	return &GetGroupContentInternalServerError{}
}

/*GetGroupContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetGroupContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents][%d] getGroupContentInternalServerError  %+v", 500, o.Payload)
}

func (o *GetGroupContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGroupContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
