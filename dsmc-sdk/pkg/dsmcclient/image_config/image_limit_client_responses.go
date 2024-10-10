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

// ImageLimitClientReader is a Reader for the ImageLimitClient structure.
type ImageLimitClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImageLimitClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImageLimitClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImageLimitClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImageLimitClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImageLimitClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/images/limit returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImageLimitClientOK creates a ImageLimitClientOK with default headers values
func NewImageLimitClientOK() *ImageLimitClientOK {
	return &ImageLimitClientOK{}
}

/*ImageLimitClientOK handles this case with default header values.

  ok
*/
type ImageLimitClientOK struct {
	Payload *dsmcclientmodels.ModelsGetImageLimitResponse
}

func (o *ImageLimitClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/limit][%d] imageLimitClientOK  %+v", 200, o.ToJSONString())
}

func (o *ImageLimitClientOK) ToJSONString() string {
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

func (o *ImageLimitClientOK) GetPayload() *dsmcclientmodels.ModelsGetImageLimitResponse {
	return o.Payload
}

func (o *ImageLimitClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsGetImageLimitResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageLimitClientBadRequest creates a ImageLimitClientBadRequest with default headers values
func NewImageLimitClientBadRequest() *ImageLimitClientBadRequest {
	return &ImageLimitClientBadRequest{}
}

/*ImageLimitClientBadRequest handles this case with default header values.

  malformed request
*/
type ImageLimitClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageLimitClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/limit][%d] imageLimitClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImageLimitClientBadRequest) ToJSONString() string {
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

func (o *ImageLimitClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageLimitClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImageLimitClientUnauthorized creates a ImageLimitClientUnauthorized with default headers values
func NewImageLimitClientUnauthorized() *ImageLimitClientUnauthorized {
	return &ImageLimitClientUnauthorized{}
}

/*ImageLimitClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type ImageLimitClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageLimitClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/limit][%d] imageLimitClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImageLimitClientUnauthorized) ToJSONString() string {
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

func (o *ImageLimitClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageLimitClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImageLimitClientInternalServerError creates a ImageLimitClientInternalServerError with default headers values
func NewImageLimitClientInternalServerError() *ImageLimitClientInternalServerError {
	return &ImageLimitClientInternalServerError{}
}

/*ImageLimitClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImageLimitClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageLimitClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/limit][%d] imageLimitClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImageLimitClientInternalServerError) ToJSONString() string {
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

func (o *ImageLimitClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageLimitClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
