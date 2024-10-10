// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package images

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// ImageMarkForDeletionReader is a Reader for the ImageMarkForDeletion structure.
type ImageMarkForDeletionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImageMarkForDeletionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewImageMarkForDeletionAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImageMarkForDeletionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImageMarkForDeletionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImageMarkForDeletionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewImageMarkForDeletionPreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImageMarkForDeletionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImageMarkForDeletionAccepted creates a ImageMarkForDeletionAccepted with default headers values
func NewImageMarkForDeletionAccepted() *ImageMarkForDeletionAccepted {
	return &ImageMarkForDeletionAccepted{}
}

/*ImageMarkForDeletionAccepted handles this case with default header values.

  success
*/
type ImageMarkForDeletionAccepted struct {
}

func (o *ImageMarkForDeletionAccepted) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionAccepted ", 202)
}

func (o *ImageMarkForDeletionAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewImageMarkForDeletionUnauthorized creates a ImageMarkForDeletionUnauthorized with default headers values
func NewImageMarkForDeletionUnauthorized() *ImageMarkForDeletionUnauthorized {
	return &ImageMarkForDeletionUnauthorized{}
}

/*ImageMarkForDeletionUnauthorized handles this case with default header values.

  no authorization provided
*/
type ImageMarkForDeletionUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageMarkForDeletionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImageMarkForDeletionUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *ImageMarkForDeletionUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageMarkForDeletionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageMarkForDeletionForbidden creates a ImageMarkForDeletionForbidden with default headers values
func NewImageMarkForDeletionForbidden() *ImageMarkForDeletionForbidden {
	return &ImageMarkForDeletionForbidden{}
}

/*ImageMarkForDeletionForbidden handles this case with default header values.

  insufficient permissions
*/
type ImageMarkForDeletionForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageMarkForDeletionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImageMarkForDeletionForbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *ImageMarkForDeletionForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageMarkForDeletionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageMarkForDeletionNotFound creates a ImageMarkForDeletionNotFound with default headers values
func NewImageMarkForDeletionNotFound() *ImageMarkForDeletionNotFound {
	return &ImageMarkForDeletionNotFound{}
}

/*ImageMarkForDeletionNotFound handles this case with default header values.

  image doesn't exist
*/
type ImageMarkForDeletionNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageMarkForDeletionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImageMarkForDeletionNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *ImageMarkForDeletionNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageMarkForDeletionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageMarkForDeletionPreconditionFailed creates a ImageMarkForDeletionPreconditionFailed with default headers values
func NewImageMarkForDeletionPreconditionFailed() *ImageMarkForDeletionPreconditionFailed {
	return &ImageMarkForDeletionPreconditionFailed{}
}

/*ImageMarkForDeletionPreconditionFailed handles this case with default header values.

  image is being used by 1 or more fleets
*/
type ImageMarkForDeletionPreconditionFailed struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageMarkForDeletionPreconditionFailed) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionPreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *ImageMarkForDeletionPreconditionFailed) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *ImageMarkForDeletionPreconditionFailed) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageMarkForDeletionPreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageMarkForDeletionInternalServerError creates a ImageMarkForDeletionInternalServerError with default headers values
func NewImageMarkForDeletionInternalServerError() *ImageMarkForDeletionInternalServerError {
	return &ImageMarkForDeletionInternalServerError{}
}

/*ImageMarkForDeletionInternalServerError handles this case with default header values.

  internal server error
*/
type ImageMarkForDeletionInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageMarkForDeletionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imageMarkForDeletionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImageMarkForDeletionInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *ImageMarkForDeletionInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageMarkForDeletionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
