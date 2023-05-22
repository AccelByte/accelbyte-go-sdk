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

// DeleteDeploymentClientReader is a Reader for the DeleteDeploymentClient structure.
type DeleteDeploymentClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDeploymentClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteDeploymentClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteDeploymentClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteDeploymentClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteDeploymentClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteDeploymentClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDeploymentClientNoContent creates a DeleteDeploymentClientNoContent with default headers values
func NewDeleteDeploymentClientNoContent() *DeleteDeploymentClientNoContent {
	return &DeleteDeploymentClientNoContent{}
}

/*DeleteDeploymentClientNoContent handles this case with default header values.

  ok
*/
type DeleteDeploymentClientNoContent struct {
}

func (o *DeleteDeploymentClientNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentClientNoContent ", 204)
}

func (o *DeleteDeploymentClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteDeploymentClientBadRequest creates a DeleteDeploymentClientBadRequest with default headers values
func NewDeleteDeploymentClientBadRequest() *DeleteDeploymentClientBadRequest {
	return &DeleteDeploymentClientBadRequest{}
}

/*DeleteDeploymentClientBadRequest handles this case with default header values.

  malformed request
*/
type DeleteDeploymentClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentClientBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteDeploymentClientBadRequest) ToJSONString() string {
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

func (o *DeleteDeploymentClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteDeploymentClientUnauthorized creates a DeleteDeploymentClientUnauthorized with default headers values
func NewDeleteDeploymentClientUnauthorized() *DeleteDeploymentClientUnauthorized {
	return &DeleteDeploymentClientUnauthorized{}
}

/*DeleteDeploymentClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteDeploymentClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentClientUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteDeploymentClientUnauthorized) ToJSONString() string {
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

func (o *DeleteDeploymentClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteDeploymentClientNotFound creates a DeleteDeploymentClientNotFound with default headers values
func NewDeleteDeploymentClientNotFound() *DeleteDeploymentClientNotFound {
	return &DeleteDeploymentClientNotFound{}
}

/*DeleteDeploymentClientNotFound handles this case with default header values.

  deployment not found
*/
type DeleteDeploymentClientNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentClientNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteDeploymentClientNotFound) ToJSONString() string {
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

func (o *DeleteDeploymentClientNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteDeploymentClientInternalServerError creates a DeleteDeploymentClientInternalServerError with default headers values
func NewDeleteDeploymentClientInternalServerError() *DeleteDeploymentClientInternalServerError {
	return &DeleteDeploymentClientInternalServerError{}
}

/*DeleteDeploymentClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteDeploymentClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteDeploymentClientInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}][%d] deleteDeploymentClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteDeploymentClientInternalServerError) ToJSONString() string {
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

func (o *DeleteDeploymentClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteDeploymentClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
