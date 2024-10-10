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

// GetRepositoryReader is a Reader for the GetRepository structure.
type GetRepositoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRepositoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRepositoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRepositoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRepositoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetRepositoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/repository returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRepositoryOK creates a GetRepositoryOK with default headers values
func NewGetRepositoryOK() *GetRepositoryOK {
	return &GetRepositoryOK{}
}

/*GetRepositoryOK handles this case with default header values.

  repository retrieved
*/
type GetRepositoryOK struct {
	Payload *dsmcclientmodels.ModelsRepositoryRecord
}

func (o *GetRepositoryOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/repository][%d] getRepositoryOK  %+v", 200, o.ToJSONString())
}

func (o *GetRepositoryOK) ToJSONString() string {
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

func (o *GetRepositoryOK) GetPayload() *dsmcclientmodels.ModelsRepositoryRecord {
	return o.Payload
}

func (o *GetRepositoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsRepositoryRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRepositoryUnauthorized creates a GetRepositoryUnauthorized with default headers values
func NewGetRepositoryUnauthorized() *GetRepositoryUnauthorized {
	return &GetRepositoryUnauthorized{}
}

/*GetRepositoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetRepositoryUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetRepositoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/repository][%d] getRepositoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetRepositoryUnauthorized) ToJSONString() string {
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

func (o *GetRepositoryUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetRepositoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRepositoryNotFound creates a GetRepositoryNotFound with default headers values
func NewGetRepositoryNotFound() *GetRepositoryNotFound {
	return &GetRepositoryNotFound{}
}

/*GetRepositoryNotFound handles this case with default header values.

  repository not found
*/
type GetRepositoryNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetRepositoryNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/repository][%d] getRepositoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetRepositoryNotFound) ToJSONString() string {
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

func (o *GetRepositoryNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetRepositoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRepositoryInternalServerError creates a GetRepositoryInternalServerError with default headers values
func NewGetRepositoryInternalServerError() *GetRepositoryInternalServerError {
	return &GetRepositoryInternalServerError{}
}

/*GetRepositoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetRepositoryInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetRepositoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/repository][%d] getRepositoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetRepositoryInternalServerError) ToJSONString() string {
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

func (o *GetRepositoryInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetRepositoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
