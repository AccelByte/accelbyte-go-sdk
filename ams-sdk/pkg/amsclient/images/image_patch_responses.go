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

// ImagePatchReader is a Reader for the ImagePatch structure.
type ImagePatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImagePatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImagePatchOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImagePatchUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImagePatchForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImagePatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImagePatchInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImagePatchOK creates a ImagePatchOK with default headers values
func NewImagePatchOK() *ImagePatchOK {
	return &ImagePatchOK{}
}

/*ImagePatchOK handles this case with default header values.

  success
*/
type ImagePatchOK struct {
	Payload *amsclientmodels.APIImageDetails
}

func (o *ImagePatchOK) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imagePatchOK  %+v", 200, o.ToJSONString())
}

func (o *ImagePatchOK) ToJSONString() string {
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

func (o *ImagePatchOK) GetPayload() *amsclientmodels.APIImageDetails {
	return o.Payload
}

func (o *ImagePatchOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIImageDetails)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImagePatchUnauthorized creates a ImagePatchUnauthorized with default headers values
func NewImagePatchUnauthorized() *ImagePatchUnauthorized {
	return &ImagePatchUnauthorized{}
}

/*ImagePatchUnauthorized handles this case with default header values.

  no authorization provided
*/
type ImagePatchUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagePatchUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imagePatchUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImagePatchUnauthorized) ToJSONString() string {
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

func (o *ImagePatchUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagePatchUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagePatchForbidden creates a ImagePatchForbidden with default headers values
func NewImagePatchForbidden() *ImagePatchForbidden {
	return &ImagePatchForbidden{}
}

/*ImagePatchForbidden handles this case with default header values.

  insufficient permissions
*/
type ImagePatchForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagePatchForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imagePatchForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImagePatchForbidden) ToJSONString() string {
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

func (o *ImagePatchForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagePatchForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagePatchNotFound creates a ImagePatchNotFound with default headers values
func NewImagePatchNotFound() *ImagePatchNotFound {
	return &ImagePatchNotFound{}
}

/*ImagePatchNotFound handles this case with default header values.

  account not linked
*/
type ImagePatchNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagePatchNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imagePatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImagePatchNotFound) ToJSONString() string {
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

func (o *ImagePatchNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagePatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImagePatchInternalServerError creates a ImagePatchInternalServerError with default headers values
func NewImagePatchInternalServerError() *ImagePatchInternalServerError {
	return &ImagePatchInternalServerError{}
}

/*ImagePatchInternalServerError handles this case with default header values.

  internal server error
*/
type ImagePatchInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *ImagePatchInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/images/{imageID}][%d] imagePatchInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImagePatchInternalServerError) ToJSONString() string {
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

func (o *ImagePatchInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *ImagePatchInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
