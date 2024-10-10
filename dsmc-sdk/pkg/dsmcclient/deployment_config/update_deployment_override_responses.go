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

// UpdateDeploymentOverrideReader is a Reader for the UpdateDeploymentOverride structure.
type UpdateDeploymentOverrideReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateDeploymentOverrideReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateDeploymentOverrideOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateDeploymentOverrideBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateDeploymentOverrideUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateDeploymentOverrideNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateDeploymentOverrideInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateDeploymentOverrideOK creates a UpdateDeploymentOverrideOK with default headers values
func NewUpdateDeploymentOverrideOK() *UpdateDeploymentOverrideOK {
	return &UpdateDeploymentOverrideOK{}
}

/*UpdateDeploymentOverrideOK handles this case with default header values.

  deployment override updated
*/
type UpdateDeploymentOverrideOK struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *UpdateDeploymentOverrideOK) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] updateDeploymentOverrideOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateDeploymentOverrideOK) ToJSONString() string {
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

func (o *UpdateDeploymentOverrideOK) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *UpdateDeploymentOverrideOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDeploymentOverrideBadRequest creates a UpdateDeploymentOverrideBadRequest with default headers values
func NewUpdateDeploymentOverrideBadRequest() *UpdateDeploymentOverrideBadRequest {
	return &UpdateDeploymentOverrideBadRequest{}
}

/*UpdateDeploymentOverrideBadRequest handles this case with default header values.

  malformed request
*/
type UpdateDeploymentOverrideBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateDeploymentOverrideBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] updateDeploymentOverrideBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateDeploymentOverrideBadRequest) ToJSONString() string {
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

func (o *UpdateDeploymentOverrideBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateDeploymentOverrideBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDeploymentOverrideUnauthorized creates a UpdateDeploymentOverrideUnauthorized with default headers values
func NewUpdateDeploymentOverrideUnauthorized() *UpdateDeploymentOverrideUnauthorized {
	return &UpdateDeploymentOverrideUnauthorized{}
}

/*UpdateDeploymentOverrideUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateDeploymentOverrideUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateDeploymentOverrideUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] updateDeploymentOverrideUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateDeploymentOverrideUnauthorized) ToJSONString() string {
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

func (o *UpdateDeploymentOverrideUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateDeploymentOverrideUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDeploymentOverrideNotFound creates a UpdateDeploymentOverrideNotFound with default headers values
func NewUpdateDeploymentOverrideNotFound() *UpdateDeploymentOverrideNotFound {
	return &UpdateDeploymentOverrideNotFound{}
}

/*UpdateDeploymentOverrideNotFound handles this case with default header values.

  deployment not found
*/
type UpdateDeploymentOverrideNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateDeploymentOverrideNotFound) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] updateDeploymentOverrideNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateDeploymentOverrideNotFound) ToJSONString() string {
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

func (o *UpdateDeploymentOverrideNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateDeploymentOverrideNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDeploymentOverrideInternalServerError creates a UpdateDeploymentOverrideInternalServerError with default headers values
func NewUpdateDeploymentOverrideInternalServerError() *UpdateDeploymentOverrideInternalServerError {
	return &UpdateDeploymentOverrideInternalServerError{}
}

/*UpdateDeploymentOverrideInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateDeploymentOverrideInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateDeploymentOverrideInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] updateDeploymentOverrideInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateDeploymentOverrideInternalServerError) ToJSONString() string {
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

func (o *UpdateDeploymentOverrideInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateDeploymentOverrideInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
