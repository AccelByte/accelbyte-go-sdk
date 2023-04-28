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

// GetImageDetailReader is a Reader for the GetImageDetail structure.
type GetImageDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetImageDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetImageDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetImageDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetImageDetailNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetImageDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetImageDetailOK creates a GetImageDetailOK with default headers values
func NewGetImageDetailOK() *GetImageDetailOK {
	return &GetImageDetailOK{}
}

/*GetImageDetailOK handles this case with default header values.

  ok
*/
type GetImageDetailOK struct {
	Payload *dsmcclientmodels.ModelsGetImageDetailResponse
}

func (o *GetImageDetailOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}][%d] getImageDetailOK  %+v", 200, o.ToJSONString())
}

func (o *GetImageDetailOK) ToJSONString() string {
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

func (o *GetImageDetailOK) GetPayload() *dsmcclientmodels.ModelsGetImageDetailResponse {
	return o.Payload
}

func (o *GetImageDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsGetImageDetailResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetImageDetailUnauthorized creates a GetImageDetailUnauthorized with default headers values
func NewGetImageDetailUnauthorized() *GetImageDetailUnauthorized {
	return &GetImageDetailUnauthorized{}
}

/*GetImageDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetImageDetailUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetImageDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}][%d] getImageDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetImageDetailUnauthorized) ToJSONString() string {
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

func (o *GetImageDetailUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetImageDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetImageDetailNotFound creates a GetImageDetailNotFound with default headers values
func NewGetImageDetailNotFound() *GetImageDetailNotFound {
	return &GetImageDetailNotFound{}
}

/*GetImageDetailNotFound handles this case with default header values.

  image version not found
*/
type GetImageDetailNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetImageDetailNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}][%d] getImageDetailNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetImageDetailNotFound) ToJSONString() string {
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

func (o *GetImageDetailNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetImageDetailNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetImageDetailInternalServerError creates a GetImageDetailInternalServerError with default headers values
func NewGetImageDetailInternalServerError() *GetImageDetailInternalServerError {
	return &GetImageDetailInternalServerError{}
}

/*GetImageDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetImageDetailInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetImageDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}][%d] getImageDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetImageDetailInternalServerError) ToJSONString() string {
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

func (o *GetImageDetailInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetImageDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
