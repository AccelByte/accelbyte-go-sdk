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

// CreateRepositoryReader is a Reader for the CreateRepository structure.
type CreateRepositoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateRepositoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCreateRepositoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateRepositoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateRepositoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateRepositoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/repository returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateRepositoryNoContent creates a CreateRepositoryNoContent with default headers values
func NewCreateRepositoryNoContent() *CreateRepositoryNoContent {
	return &CreateRepositoryNoContent{}
}

/*CreateRepositoryNoContent handles this case with default header values.

  repository created
*/
type CreateRepositoryNoContent struct {
}

func (o *CreateRepositoryNoContent) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/repository][%d] createRepositoryNoContent ", 204)
}

func (o *CreateRepositoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateRepositoryBadRequest creates a CreateRepositoryBadRequest with default headers values
func NewCreateRepositoryBadRequest() *CreateRepositoryBadRequest {
	return &CreateRepositoryBadRequest{}
}

/*CreateRepositoryBadRequest handles this case with default header values.

  malformed request
*/
type CreateRepositoryBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateRepositoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/repository][%d] createRepositoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateRepositoryBadRequest) ToJSONString() string {
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

func (o *CreateRepositoryBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRepositoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRepositoryUnauthorized creates a CreateRepositoryUnauthorized with default headers values
func NewCreateRepositoryUnauthorized() *CreateRepositoryUnauthorized {
	return &CreateRepositoryUnauthorized{}
}

/*CreateRepositoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateRepositoryUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateRepositoryUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/repository][%d] createRepositoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateRepositoryUnauthorized) ToJSONString() string {
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

func (o *CreateRepositoryUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRepositoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRepositoryInternalServerError creates a CreateRepositoryInternalServerError with default headers values
func NewCreateRepositoryInternalServerError() *CreateRepositoryInternalServerError {
	return &CreateRepositoryInternalServerError{}
}

/*CreateRepositoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateRepositoryInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateRepositoryInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/repository][%d] createRepositoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateRepositoryInternalServerError) ToJSONString() string {
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

func (o *CreateRepositoryInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRepositoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
