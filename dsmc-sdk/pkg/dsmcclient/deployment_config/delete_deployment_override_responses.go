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

// DeleteDeploymentOverrideReader is a Reader for the DeleteDeploymentOverride structure.
type DeleteDeploymentOverrideReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDeploymentOverrideReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteDeploymentOverrideOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteDeploymentOverrideBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteDeploymentOverrideUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteDeploymentOverrideNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteDeploymentOverrideInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDeploymentOverrideOK creates a DeleteDeploymentOverrideOK with default headers values
func NewDeleteDeploymentOverrideOK() *DeleteDeploymentOverrideOK {
	return &DeleteDeploymentOverrideOK{}
}

/*DeleteDeploymentOverrideOK handles this case with default header values.

  deployment override deleted
*/
type DeleteDeploymentOverrideOK struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *DeleteDeploymentOverrideOK) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] deleteDeploymentOverrideOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteDeploymentOverrideOK) ToJSONString() string {
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

func (o *DeleteDeploymentOverrideOK) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *DeleteDeploymentOverrideOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentOverrideBadRequest creates a DeleteDeploymentOverrideBadRequest with default headers values
func NewDeleteDeploymentOverrideBadRequest() *DeleteDeploymentOverrideBadRequest {
	return &DeleteDeploymentOverrideBadRequest{}
}

/*DeleteDeploymentOverrideBadRequest handles this case with default header values.

  malformed request
*/
type DeleteDeploymentOverrideBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentOverrideBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] deleteDeploymentOverrideBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteDeploymentOverrideBadRequest) ToJSONString() string {
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

func (o *DeleteDeploymentOverrideBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentOverrideBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentOverrideUnauthorized creates a DeleteDeploymentOverrideUnauthorized with default headers values
func NewDeleteDeploymentOverrideUnauthorized() *DeleteDeploymentOverrideUnauthorized {
	return &DeleteDeploymentOverrideUnauthorized{}
}

/*DeleteDeploymentOverrideUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteDeploymentOverrideUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentOverrideUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] deleteDeploymentOverrideUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteDeploymentOverrideUnauthorized) ToJSONString() string {
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

func (o *DeleteDeploymentOverrideUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentOverrideUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentOverrideNotFound creates a DeleteDeploymentOverrideNotFound with default headers values
func NewDeleteDeploymentOverrideNotFound() *DeleteDeploymentOverrideNotFound {
	return &DeleteDeploymentOverrideNotFound{}
}

/*DeleteDeploymentOverrideNotFound handles this case with default header values.

  deployment not found
*/
type DeleteDeploymentOverrideNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentOverrideNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] deleteDeploymentOverrideNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteDeploymentOverrideNotFound) ToJSONString() string {
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

func (o *DeleteDeploymentOverrideNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentOverrideNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentOverrideInternalServerError creates a DeleteDeploymentOverrideInternalServerError with default headers values
func NewDeleteDeploymentOverrideInternalServerError() *DeleteDeploymentOverrideInternalServerError {
	return &DeleteDeploymentOverrideInternalServerError{}
}

/*DeleteDeploymentOverrideInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteDeploymentOverrideInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentOverrideInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}][%d] deleteDeploymentOverrideInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteDeploymentOverrideInternalServerError) ToJSONString() string {
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

func (o *DeleteDeploymentOverrideInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentOverrideInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
