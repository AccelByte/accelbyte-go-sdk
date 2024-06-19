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

// ImageUnmarkForDeletionReader is a Reader for the ImageUnmarkForDeletion structure.
type ImageUnmarkForDeletionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImageUnmarkForDeletionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewImageUnmarkForDeletionAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImageUnmarkForDeletionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImageUnmarkForDeletionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImageUnmarkForDeletionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewImageUnmarkForDeletionPreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImageUnmarkForDeletionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImageUnmarkForDeletionAccepted creates a ImageUnmarkForDeletionAccepted with default headers values
func NewImageUnmarkForDeletionAccepted() *ImageUnmarkForDeletionAccepted {
	return &ImageUnmarkForDeletionAccepted{}
}

/*ImageUnmarkForDeletionAccepted handles this case with default header values.

  success
*/
type ImageUnmarkForDeletionAccepted struct {
}

func (o *ImageUnmarkForDeletionAccepted) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionAccepted ", 202)
}

func (o *ImageUnmarkForDeletionAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewImageUnmarkForDeletionUnauthorized creates a ImageUnmarkForDeletionUnauthorized with default headers values
func NewImageUnmarkForDeletionUnauthorized() *ImageUnmarkForDeletionUnauthorized {
	return &ImageUnmarkForDeletionUnauthorized{}
}

/*ImageUnmarkForDeletionUnauthorized handles this case with default header values.

  no authorization provided
*/
type ImageUnmarkForDeletionUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageUnmarkForDeletionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImageUnmarkForDeletionUnauthorized) ToJSONString() string {
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

func (o *ImageUnmarkForDeletionUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageUnmarkForDeletionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImageUnmarkForDeletionForbidden creates a ImageUnmarkForDeletionForbidden with default headers values
func NewImageUnmarkForDeletionForbidden() *ImageUnmarkForDeletionForbidden {
	return &ImageUnmarkForDeletionForbidden{}
}

/*ImageUnmarkForDeletionForbidden handles this case with default header values.

  insufficient permissions
*/
type ImageUnmarkForDeletionForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageUnmarkForDeletionForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImageUnmarkForDeletionForbidden) ToJSONString() string {
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

func (o *ImageUnmarkForDeletionForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageUnmarkForDeletionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImageUnmarkForDeletionNotFound creates a ImageUnmarkForDeletionNotFound with default headers values
func NewImageUnmarkForDeletionNotFound() *ImageUnmarkForDeletionNotFound {
	return &ImageUnmarkForDeletionNotFound{}
}

/*ImageUnmarkForDeletionNotFound handles this case with default header values.

  image doesn't exist
*/
type ImageUnmarkForDeletionNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageUnmarkForDeletionNotFound) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImageUnmarkForDeletionNotFound) ToJSONString() string {
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

func (o *ImageUnmarkForDeletionNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageUnmarkForDeletionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImageUnmarkForDeletionPreconditionFailed creates a ImageUnmarkForDeletionPreconditionFailed with default headers values
func NewImageUnmarkForDeletionPreconditionFailed() *ImageUnmarkForDeletionPreconditionFailed {
	return &ImageUnmarkForDeletionPreconditionFailed{}
}

/*ImageUnmarkForDeletionPreconditionFailed handles this case with default header values.

  image wasn't marked for deletion
*/
type ImageUnmarkForDeletionPreconditionFailed struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageUnmarkForDeletionPreconditionFailed) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionPreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *ImageUnmarkForDeletionPreconditionFailed) ToJSONString() string {
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

func (o *ImageUnmarkForDeletionPreconditionFailed) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageUnmarkForDeletionPreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImageUnmarkForDeletionInternalServerError creates a ImageUnmarkForDeletionInternalServerError with default headers values
func NewImageUnmarkForDeletionInternalServerError() *ImageUnmarkForDeletionInternalServerError {
	return &ImageUnmarkForDeletionInternalServerError{}
}

/*ImageUnmarkForDeletionInternalServerError handles this case with default header values.

  internal server error
*/
type ImageUnmarkForDeletionInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImageUnmarkForDeletionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/images/{imageID}/restore][%d] imageUnmarkForDeletionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImageUnmarkForDeletionInternalServerError) ToJSONString() string {
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

func (o *ImageUnmarkForDeletionInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImageUnmarkForDeletionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
