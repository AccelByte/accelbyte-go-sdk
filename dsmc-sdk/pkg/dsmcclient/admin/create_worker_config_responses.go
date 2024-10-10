// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// CreateWorkerConfigReader is a Reader for the CreateWorkerConfig structure.
type CreateWorkerConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateWorkerConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateWorkerConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateWorkerConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateWorkerConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateWorkerConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespace/{namespace}/workers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateWorkerConfigCreated creates a CreateWorkerConfigCreated with default headers values
func NewCreateWorkerConfigCreated() *CreateWorkerConfigCreated {
	return &CreateWorkerConfigCreated{}
}

/*CreateWorkerConfigCreated handles this case with default header values.

  The worker configuration has been successfully created.
*/
type CreateWorkerConfigCreated struct {
	Payload *dsmcclientmodels.ModelsWorkerConfig
}

func (o *CreateWorkerConfigCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespace/{namespace}/workers][%d] createWorkerConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateWorkerConfigCreated) ToJSONString() string {
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

func (o *CreateWorkerConfigCreated) GetPayload() *dsmcclientmodels.ModelsWorkerConfig {
	return o.Payload
}

func (o *CreateWorkerConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsWorkerConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateWorkerConfigBadRequest creates a CreateWorkerConfigBadRequest with default headers values
func NewCreateWorkerConfigBadRequest() *CreateWorkerConfigBadRequest {
	return &CreateWorkerConfigBadRequest{}
}

/*CreateWorkerConfigBadRequest handles this case with default header values.

  Bad Request
*/
type CreateWorkerConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateWorkerConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespace/{namespace}/workers][%d] createWorkerConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateWorkerConfigBadRequest) ToJSONString() string {
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

func (o *CreateWorkerConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateWorkerConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateWorkerConfigUnauthorized creates a CreateWorkerConfigUnauthorized with default headers values
func NewCreateWorkerConfigUnauthorized() *CreateWorkerConfigUnauthorized {
	return &CreateWorkerConfigUnauthorized{}
}

/*CreateWorkerConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateWorkerConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateWorkerConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespace/{namespace}/workers][%d] createWorkerConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateWorkerConfigUnauthorized) ToJSONString() string {
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

func (o *CreateWorkerConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateWorkerConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateWorkerConfigInternalServerError creates a CreateWorkerConfigInternalServerError with default headers values
func NewCreateWorkerConfigInternalServerError() *CreateWorkerConfigInternalServerError {
	return &CreateWorkerConfigInternalServerError{}
}

/*CreateWorkerConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateWorkerConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateWorkerConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespace/{namespace}/workers][%d] createWorkerConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateWorkerConfigInternalServerError) ToJSONString() string {
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

func (o *CreateWorkerConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateWorkerConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
