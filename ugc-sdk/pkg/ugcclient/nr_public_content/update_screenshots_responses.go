// Code generated by go-swagger; DO NOT EDIT.

package nr_public_content

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

// UpdateScreenshotsReader is a Reader for the UpdateScreenshots structure.
type UpdateScreenshotsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateScreenshotsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateScreenshotsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateScreenshotsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateScreenshotsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateScreenshotsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateScreenshotsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateScreenshotsOK creates a UpdateScreenshotsOK with default headers values
func NewUpdateScreenshotsOK() *UpdateScreenshotsOK {
	return &UpdateScreenshotsOK{}
}

/*UpdateScreenshotsOK handles this case with default header values.

  OK
*/
type UpdateScreenshotsOK struct {
	Payload *ugcclientmodels.ModelsUpdateScreenshotResponse
}

func (o *UpdateScreenshotsOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsOK  %+v", 200, o.Payload)
}

func (o *UpdateScreenshotsOK) GetPayload() *ugcclientmodels.ModelsUpdateScreenshotResponse {
	return o.Payload
}

func (o *UpdateScreenshotsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsUpdateScreenshotResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsBadRequest creates a UpdateScreenshotsBadRequest with default headers values
func NewUpdateScreenshotsBadRequest() *UpdateScreenshotsBadRequest {
	return &UpdateScreenshotsBadRequest{}
}

/*UpdateScreenshotsBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateScreenshotsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsBadRequest  %+v", 400, o.Payload)
}

func (o *UpdateScreenshotsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsUnauthorized creates a UpdateScreenshotsUnauthorized with default headers values
func NewUpdateScreenshotsUnauthorized() *UpdateScreenshotsUnauthorized {
	return &UpdateScreenshotsUnauthorized{}
}

/*UpdateScreenshotsUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateScreenshotsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsUnauthorized  %+v", 401, o.Payload)
}

func (o *UpdateScreenshotsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsNotFound creates a UpdateScreenshotsNotFound with default headers values
func NewUpdateScreenshotsNotFound() *UpdateScreenshotsNotFound {
	return &UpdateScreenshotsNotFound{}
}

/*UpdateScreenshotsNotFound handles this case with default header values.

  Not Found
*/
type UpdateScreenshotsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsNotFound  %+v", 404, o.Payload)
}

func (o *UpdateScreenshotsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsInternalServerError creates a UpdateScreenshotsInternalServerError with default headers values
func NewUpdateScreenshotsInternalServerError() *UpdateScreenshotsInternalServerError {
	return &UpdateScreenshotsInternalServerError{}
}

/*UpdateScreenshotsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateScreenshotsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsInternalServerError  %+v", 500, o.Payload)
}

func (o *UpdateScreenshotsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}