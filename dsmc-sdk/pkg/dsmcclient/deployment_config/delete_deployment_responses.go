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

// DeleteDeploymentReader is a Reader for the DeleteDeployment structure.
type DeleteDeploymentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDeploymentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteDeploymentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteDeploymentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteDeploymentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteDeploymentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteDeploymentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDeploymentNoContent creates a DeleteDeploymentNoContent with default headers values
func NewDeleteDeploymentNoContent() *DeleteDeploymentNoContent {
	return &DeleteDeploymentNoContent{}
}

/*DeleteDeploymentNoContent handles this case with default header values.

  ok
*/
type DeleteDeploymentNoContent struct {
}

func (o *DeleteDeploymentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentNoContent ", 204)
}

func (o *DeleteDeploymentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteDeploymentBadRequest creates a DeleteDeploymentBadRequest with default headers values
func NewDeleteDeploymentBadRequest() *DeleteDeploymentBadRequest {
	return &DeleteDeploymentBadRequest{}
}

/*DeleteDeploymentBadRequest handles this case with default header values.

  malformed request
*/
type DeleteDeploymentBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteDeploymentBadRequest) ToJSONString() string {
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

func (o *DeleteDeploymentBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentUnauthorized creates a DeleteDeploymentUnauthorized with default headers values
func NewDeleteDeploymentUnauthorized() *DeleteDeploymentUnauthorized {
	return &DeleteDeploymentUnauthorized{}
}

/*DeleteDeploymentUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteDeploymentUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteDeploymentUnauthorized) ToJSONString() string {
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

func (o *DeleteDeploymentUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentNotFound creates a DeleteDeploymentNotFound with default headers values
func NewDeleteDeploymentNotFound() *DeleteDeploymentNotFound {
	return &DeleteDeploymentNotFound{}
}

/*DeleteDeploymentNotFound handles this case with default header values.

  deployment not found
*/
type DeleteDeploymentNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteDeploymentNotFound) ToJSONString() string {
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

func (o *DeleteDeploymentNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteDeploymentInternalServerError creates a DeleteDeploymentInternalServerError with default headers values
func NewDeleteDeploymentInternalServerError() *DeleteDeploymentInternalServerError {
	return &DeleteDeploymentInternalServerError{}
}

/*DeleteDeploymentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteDeploymentInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteDeploymentInternalServerError) ToJSONString() string {
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

func (o *DeleteDeploymentInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
