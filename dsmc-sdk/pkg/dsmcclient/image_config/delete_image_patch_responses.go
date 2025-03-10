// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// DeleteImagePatchReader is a Reader for the DeleteImagePatch structure.
type DeleteImagePatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteImagePatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteImagePatchNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteImagePatchBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteImagePatchUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteImagePatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDeleteImagePatchUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteImagePatchInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteImagePatchNoContent creates a DeleteImagePatchNoContent with default headers values
func NewDeleteImagePatchNoContent() *DeleteImagePatchNoContent {
	return &DeleteImagePatchNoContent{}
}

/*DeleteImagePatchNoContent handles this case with default header values.

  image deleted
*/
type DeleteImagePatchNoContent struct {
}

func (o *DeleteImagePatchNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchNoContent ", 204)
}

func (o *DeleteImagePatchNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteImagePatchBadRequest creates a DeleteImagePatchBadRequest with default headers values
func NewDeleteImagePatchBadRequest() *DeleteImagePatchBadRequest {
	return &DeleteImagePatchBadRequest{}
}

/*DeleteImagePatchBadRequest handles this case with default header values.

  malformed request
*/
type DeleteImagePatchBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteImagePatchBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteImagePatchBadRequest) ToJSONString() string {
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

func (o *DeleteImagePatchBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteImagePatchBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteImagePatchUnauthorized creates a DeleteImagePatchUnauthorized with default headers values
func NewDeleteImagePatchUnauthorized() *DeleteImagePatchUnauthorized {
	return &DeleteImagePatchUnauthorized{}
}

/*DeleteImagePatchUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteImagePatchUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteImagePatchUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteImagePatchUnauthorized) ToJSONString() string {
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

func (o *DeleteImagePatchUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteImagePatchUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteImagePatchNotFound creates a DeleteImagePatchNotFound with default headers values
func NewDeleteImagePatchNotFound() *DeleteImagePatchNotFound {
	return &DeleteImagePatchNotFound{}
}

/*DeleteImagePatchNotFound handles this case with default header values.

  malformed request
*/
type DeleteImagePatchNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteImagePatchNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteImagePatchNotFound) ToJSONString() string {
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

func (o *DeleteImagePatchNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteImagePatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteImagePatchUnprocessableEntity creates a DeleteImagePatchUnprocessableEntity with default headers values
func NewDeleteImagePatchUnprocessableEntity() *DeleteImagePatchUnprocessableEntity {
	return &DeleteImagePatchUnprocessableEntity{}
}

/*DeleteImagePatchUnprocessableEntity handles this case with default header values.

  unprocessable entity
*/
type DeleteImagePatchUnprocessableEntity struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteImagePatchUnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DeleteImagePatchUnprocessableEntity) ToJSONString() string {
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

func (o *DeleteImagePatchUnprocessableEntity) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteImagePatchUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteImagePatchInternalServerError creates a DeleteImagePatchInternalServerError with default headers values
func NewDeleteImagePatchInternalServerError() *DeleteImagePatchInternalServerError {
	return &DeleteImagePatchInternalServerError{}
}

/*DeleteImagePatchInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteImagePatchInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteImagePatchInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/images/patches][%d] deleteImagePatchInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteImagePatchInternalServerError) ToJSONString() string {
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

func (o *DeleteImagePatchInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteImagePatchInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
