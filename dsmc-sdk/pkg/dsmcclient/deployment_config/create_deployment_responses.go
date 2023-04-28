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

// CreateDeploymentReader is a Reader for the CreateDeployment structure.
type CreateDeploymentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateDeploymentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateDeploymentCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateDeploymentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateDeploymentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateDeploymentConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateDeploymentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateDeploymentCreated creates a CreateDeploymentCreated with default headers values
func NewCreateDeploymentCreated() *CreateDeploymentCreated {
	return &CreateDeploymentCreated{}
}

/*CreateDeploymentCreated handles this case with default header values.

  deployment created
*/
type CreateDeploymentCreated struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *CreateDeploymentCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateDeploymentCreated) ToJSONString() string {
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

func (o *CreateDeploymentCreated) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *CreateDeploymentCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateDeploymentBadRequest creates a CreateDeploymentBadRequest with default headers values
func NewCreateDeploymentBadRequest() *CreateDeploymentBadRequest {
	return &CreateDeploymentBadRequest{}
}

/*CreateDeploymentBadRequest handles this case with default header values.

  malformed request
*/
type CreateDeploymentBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateDeploymentBadRequest) ToJSONString() string {
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

func (o *CreateDeploymentBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateDeploymentUnauthorized creates a CreateDeploymentUnauthorized with default headers values
func NewCreateDeploymentUnauthorized() *CreateDeploymentUnauthorized {
	return &CreateDeploymentUnauthorized{}
}

/*CreateDeploymentUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateDeploymentUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateDeploymentUnauthorized) ToJSONString() string {
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

func (o *CreateDeploymentUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateDeploymentConflict creates a CreateDeploymentConflict with default headers values
func NewCreateDeploymentConflict() *CreateDeploymentConflict {
	return &CreateDeploymentConflict{}
}

/*CreateDeploymentConflict handles this case with default header values.

  deployment already exists
*/
type CreateDeploymentConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateDeploymentConflict) ToJSONString() string {
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

func (o *CreateDeploymentConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateDeploymentInternalServerError creates a CreateDeploymentInternalServerError with default headers values
func NewCreateDeploymentInternalServerError() *CreateDeploymentInternalServerError {
	return &CreateDeploymentInternalServerError{}
}

/*CreateDeploymentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateDeploymentInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] createDeploymentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateDeploymentInternalServerError) ToJSONString() string {
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

func (o *CreateDeploymentInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
