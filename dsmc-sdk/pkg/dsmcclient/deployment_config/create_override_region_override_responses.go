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

// CreateOverrideRegionOverrideReader is a Reader for the CreateOverrideRegionOverride structure.
type CreateOverrideRegionOverrideReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateOverrideRegionOverrideReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateOverrideRegionOverrideCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateOverrideRegionOverrideBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateOverrideRegionOverrideUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateOverrideRegionOverrideNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateOverrideRegionOverrideConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateOverrideRegionOverrideInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateOverrideRegionOverrideCreated creates a CreateOverrideRegionOverrideCreated with default headers values
func NewCreateOverrideRegionOverrideCreated() *CreateOverrideRegionOverrideCreated {
	return &CreateOverrideRegionOverrideCreated{}
}

/*CreateOverrideRegionOverrideCreated handles this case with default header values.

  region override created
*/
type CreateOverrideRegionOverrideCreated struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *CreateOverrideRegionOverrideCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideCreated) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideCreated) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateOverrideRegionOverrideBadRequest creates a CreateOverrideRegionOverrideBadRequest with default headers values
func NewCreateOverrideRegionOverrideBadRequest() *CreateOverrideRegionOverrideBadRequest {
	return &CreateOverrideRegionOverrideBadRequest{}
}

/*CreateOverrideRegionOverrideBadRequest handles this case with default header values.

  malformed request
*/
type CreateOverrideRegionOverrideBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateOverrideRegionOverrideBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideBadRequest) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateOverrideRegionOverrideUnauthorized creates a CreateOverrideRegionOverrideUnauthorized with default headers values
func NewCreateOverrideRegionOverrideUnauthorized() *CreateOverrideRegionOverrideUnauthorized {
	return &CreateOverrideRegionOverrideUnauthorized{}
}

/*CreateOverrideRegionOverrideUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateOverrideRegionOverrideUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateOverrideRegionOverrideUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideUnauthorized) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateOverrideRegionOverrideNotFound creates a CreateOverrideRegionOverrideNotFound with default headers values
func NewCreateOverrideRegionOverrideNotFound() *CreateOverrideRegionOverrideNotFound {
	return &CreateOverrideRegionOverrideNotFound{}
}

/*CreateOverrideRegionOverrideNotFound handles this case with default header values.

  deployment not found
*/
type CreateOverrideRegionOverrideNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateOverrideRegionOverrideNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideNotFound) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateOverrideRegionOverrideConflict creates a CreateOverrideRegionOverrideConflict with default headers values
func NewCreateOverrideRegionOverrideConflict() *CreateOverrideRegionOverrideConflict {
	return &CreateOverrideRegionOverrideConflict{}
}

/*CreateOverrideRegionOverrideConflict handles this case with default header values.

  deployment already has region override
*/
type CreateOverrideRegionOverrideConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateOverrideRegionOverrideConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideConflict) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateOverrideRegionOverrideInternalServerError creates a CreateOverrideRegionOverrideInternalServerError with default headers values
func NewCreateOverrideRegionOverrideInternalServerError() *CreateOverrideRegionOverrideInternalServerError {
	return &CreateOverrideRegionOverrideInternalServerError{}
}

/*CreateOverrideRegionOverrideInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateOverrideRegionOverrideInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateOverrideRegionOverrideInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}][%d] createOverrideRegionOverrideInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateOverrideRegionOverrideInternalServerError) ToJSONString() string {
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

func (o *CreateOverrideRegionOverrideInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateOverrideRegionOverrideInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
