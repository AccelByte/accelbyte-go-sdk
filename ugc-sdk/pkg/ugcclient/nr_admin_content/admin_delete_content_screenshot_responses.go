// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_content

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

// AdminDeleteContentScreenshotReader is a Reader for the AdminDeleteContentScreenshot structure.
type AdminDeleteContentScreenshotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteContentScreenshotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteContentScreenshotNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteContentScreenshotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteContentScreenshotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteContentScreenshotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteContentScreenshotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteContentScreenshotNoContent creates a AdminDeleteContentScreenshotNoContent with default headers values
func NewAdminDeleteContentScreenshotNoContent() *AdminDeleteContentScreenshotNoContent {
	return &AdminDeleteContentScreenshotNoContent{}
}

/*AdminDeleteContentScreenshotNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteContentScreenshotNoContent struct {
}

func (o *AdminDeleteContentScreenshotNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotNoContent ", 204)
}

func (o *AdminDeleteContentScreenshotNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminDeleteContentScreenshotBadRequest creates a AdminDeleteContentScreenshotBadRequest with default headers values
func NewAdminDeleteContentScreenshotBadRequest() *AdminDeleteContentScreenshotBadRequest {
	return &AdminDeleteContentScreenshotBadRequest{}
}

/*AdminDeleteContentScreenshotBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteContentScreenshotBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotBadRequest  %+v", 400, o.Payload)
}

func (o *AdminDeleteContentScreenshotBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteContentScreenshotUnauthorized creates a AdminDeleteContentScreenshotUnauthorized with default headers values
func NewAdminDeleteContentScreenshotUnauthorized() *AdminDeleteContentScreenshotUnauthorized {
	return &AdminDeleteContentScreenshotUnauthorized{}
}

/*AdminDeleteContentScreenshotUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteContentScreenshotUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminDeleteContentScreenshotUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteContentScreenshotNotFound creates a AdminDeleteContentScreenshotNotFound with default headers values
func NewAdminDeleteContentScreenshotNotFound() *AdminDeleteContentScreenshotNotFound {
	return &AdminDeleteContentScreenshotNotFound{}
}

/*AdminDeleteContentScreenshotNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteContentScreenshotNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotNotFound  %+v", 404, o.Payload)
}

func (o *AdminDeleteContentScreenshotNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteContentScreenshotInternalServerError creates a AdminDeleteContentScreenshotInternalServerError with default headers values
func NewAdminDeleteContentScreenshotInternalServerError() *AdminDeleteContentScreenshotInternalServerError {
	return &AdminDeleteContentScreenshotInternalServerError{}
}

/*AdminDeleteContentScreenshotInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteContentScreenshotInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentScreenshotInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}][%d] adminDeleteContentScreenshotInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminDeleteContentScreenshotInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentScreenshotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}