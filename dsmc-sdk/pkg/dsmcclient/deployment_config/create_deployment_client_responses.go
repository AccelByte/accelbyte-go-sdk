// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment_config

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

// CreateDeploymentClientReader is a Reader for the CreateDeploymentClient structure.
type CreateDeploymentClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateDeploymentClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateDeploymentClientCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateDeploymentClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateDeploymentClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateDeploymentClientConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateDeploymentClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateDeploymentClientCreated creates a CreateDeploymentClientCreated with default headers values
func NewCreateDeploymentClientCreated() *CreateDeploymentClientCreated {
	return &CreateDeploymentClientCreated{}
}

/*CreateDeploymentClientCreated handles this case with default header values.

  deployment created
*/
type CreateDeploymentClientCreated struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *CreateDeploymentClientCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentClientCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateDeploymentClientCreated) ToJSONString() string {
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

func (o *CreateDeploymentClientCreated) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *CreateDeploymentClientCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDeploymentWithOverride)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentClientBadRequest creates a CreateDeploymentClientBadRequest with default headers values
func NewCreateDeploymentClientBadRequest() *CreateDeploymentClientBadRequest {
	return &CreateDeploymentClientBadRequest{}
}

/*CreateDeploymentClientBadRequest handles this case with default header values.

  malformed request
*/
type CreateDeploymentClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentClientBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateDeploymentClientBadRequest) ToJSONString() string {
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

func (o *CreateDeploymentClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentClientUnauthorized creates a CreateDeploymentClientUnauthorized with default headers values
func NewCreateDeploymentClientUnauthorized() *CreateDeploymentClientUnauthorized {
	return &CreateDeploymentClientUnauthorized{}
}

/*CreateDeploymentClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateDeploymentClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentClientUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateDeploymentClientUnauthorized) ToJSONString() string {
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

func (o *CreateDeploymentClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentClientConflict creates a CreateDeploymentClientConflict with default headers values
func NewCreateDeploymentClientConflict() *CreateDeploymentClientConflict {
	return &CreateDeploymentClientConflict{}
}

/*CreateDeploymentClientConflict handles this case with default header values.

  deployment already exists
*/
type CreateDeploymentClientConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentClientConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentClientConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateDeploymentClientConflict) ToJSONString() string {
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

func (o *CreateDeploymentClientConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentClientConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateDeploymentClientInternalServerError creates a CreateDeploymentClientInternalServerError with default headers values
func NewCreateDeploymentClientInternalServerError() *CreateDeploymentClientInternalServerError {
	return &CreateDeploymentClientInternalServerError{}
}

/*CreateDeploymentClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateDeploymentClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentClientInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateDeploymentClientInternalServerError) ToJSONString() string {
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

func (o *CreateDeploymentClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
