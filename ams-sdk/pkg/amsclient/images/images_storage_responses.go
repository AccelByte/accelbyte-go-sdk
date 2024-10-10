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

// ImagesStorageReader is a Reader for the ImagesStorage structure.
type ImagesStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImagesStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImagesStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImagesStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImagesStorageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImagesStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImagesStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/images-storage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImagesStorageOK creates a ImagesStorageOK with default headers values
func NewImagesStorageOK() *ImagesStorageOK {
	return &ImagesStorageOK{}
}

/*ImagesStorageOK handles this case with default header values.

  success
*/
type ImagesStorageOK struct {
	Payload *amsclientmodels.APIImageStorage
}

func (o *ImagesStorageOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/images-storage][%d] imagesStorageOK  %+v", 200, o.ToJSONString())
}

func (o *ImagesStorageOK) ToJSONString() string {
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

func (o *ImagesStorageOK) GetPayload() *amsclientmodels.APIImageStorage {
	return o.Payload
}

func (o *ImagesStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIImageStorage)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImagesStorageUnauthorized creates a ImagesStorageUnauthorized with default headers values
func NewImagesStorageUnauthorized() *ImagesStorageUnauthorized {
	return &ImagesStorageUnauthorized{}
}

/*ImagesStorageUnauthorized handles this case with default header values.

  no authorization provided
*/
type ImagesStorageUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagesStorageUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/images-storage][%d] imagesStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImagesStorageUnauthorized) ToJSONString() string {
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

func (o *ImagesStorageUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagesStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagesStorageForbidden creates a ImagesStorageForbidden with default headers values
func NewImagesStorageForbidden() *ImagesStorageForbidden {
	return &ImagesStorageForbidden{}
}

/*ImagesStorageForbidden handles this case with default header values.

  insufficient permissions
*/
type ImagesStorageForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagesStorageForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/images-storage][%d] imagesStorageForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImagesStorageForbidden) ToJSONString() string {
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

func (o *ImagesStorageForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagesStorageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagesStorageNotFound creates a ImagesStorageNotFound with default headers values
func NewImagesStorageNotFound() *ImagesStorageNotFound {
	return &ImagesStorageNotFound{}
}

/*ImagesStorageNotFound handles this case with default header values.

  account not linked
*/
type ImagesStorageNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagesStorageNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/images-storage][%d] imagesStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImagesStorageNotFound) ToJSONString() string {
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

func (o *ImagesStorageNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagesStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagesStorageInternalServerError creates a ImagesStorageInternalServerError with default headers values
func NewImagesStorageInternalServerError() *ImagesStorageInternalServerError {
	return &ImagesStorageInternalServerError{}
}

/*ImagesStorageInternalServerError handles this case with default header values.

  internal server error
*/
type ImagesStorageInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagesStorageInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/images-storage][%d] imagesStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImagesStorageInternalServerError) ToJSONString() string {
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

func (o *ImagesStorageInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagesStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
