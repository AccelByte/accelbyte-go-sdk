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

// ListImagesClientReader is a Reader for the ListImagesClient structure.
type ListImagesClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListImagesClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListImagesClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListImagesClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListImagesClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListImagesClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListImagesClientOK creates a ListImagesClientOK with default headers values
func NewListImagesClientOK() *ListImagesClientOK {
	return &ListImagesClientOK{}
}

/*ListImagesClientOK handles this case with default header values.

  images listed
*/
type ListImagesClientOK struct {
	Payload *dsmcclientmodels.ModelsListImageResponse
}

func (o *ListImagesClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images][%d] listImagesClientOK  %+v", 200, o.ToJSONString())
}

func (o *ListImagesClientOK) ToJSONString() string {
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

func (o *ListImagesClientOK) GetPayload() *dsmcclientmodels.ModelsListImageResponse {
	return o.Payload
}

func (o *ListImagesClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsListImageResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListImagesClientBadRequest creates a ListImagesClientBadRequest with default headers values
func NewListImagesClientBadRequest() *ListImagesClientBadRequest {
	return &ListImagesClientBadRequest{}
}

/*ListImagesClientBadRequest handles this case with default header values.

  Bad Request
*/
type ListImagesClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListImagesClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images][%d] listImagesClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListImagesClientBadRequest) ToJSONString() string {
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

func (o *ListImagesClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListImagesClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListImagesClientUnauthorized creates a ListImagesClientUnauthorized with default headers values
func NewListImagesClientUnauthorized() *ListImagesClientUnauthorized {
	return &ListImagesClientUnauthorized{}
}

/*ListImagesClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListImagesClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListImagesClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images][%d] listImagesClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListImagesClientUnauthorized) ToJSONString() string {
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

func (o *ListImagesClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListImagesClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListImagesClientInternalServerError creates a ListImagesClientInternalServerError with default headers values
func NewListImagesClientInternalServerError() *ListImagesClientInternalServerError {
	return &ListImagesClientInternalServerError{}
}

/*ListImagesClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListImagesClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ListImagesClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images][%d] listImagesClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListImagesClientInternalServerError) ToJSONString() string {
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

func (o *ListImagesClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListImagesClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
