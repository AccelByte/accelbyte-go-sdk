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

// DeleteCreatingServerCountQueueReader is a Reader for the DeleteCreatingServerCountQueue structure.
type DeleteCreatingServerCountQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteCreatingServerCountQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteCreatingServerCountQueueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteCreatingServerCountQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteCreatingServerCountQueueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteCreatingServerCountQueueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteCreatingServerCountQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteCreatingServerCountQueueOK creates a DeleteCreatingServerCountQueueOK with default headers values
func NewDeleteCreatingServerCountQueueOK() *DeleteCreatingServerCountQueueOK {
	return &DeleteCreatingServerCountQueueOK{}
}

/*DeleteCreatingServerCountQueueOK handles this case with default header values.

  deployment creating server count queue deleted
*/
type DeleteCreatingServerCountQueueOK struct {
}

func (o *DeleteCreatingServerCountQueueOK) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues][%d] deleteCreatingServerCountQueueOK ", 200)
}

func (o *DeleteCreatingServerCountQueueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteCreatingServerCountQueueBadRequest creates a DeleteCreatingServerCountQueueBadRequest with default headers values
func NewDeleteCreatingServerCountQueueBadRequest() *DeleteCreatingServerCountQueueBadRequest {
	return &DeleteCreatingServerCountQueueBadRequest{}
}

/*DeleteCreatingServerCountQueueBadRequest handles this case with default header values.

  malformed request
*/
type DeleteCreatingServerCountQueueBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteCreatingServerCountQueueBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues][%d] deleteCreatingServerCountQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteCreatingServerCountQueueBadRequest) ToJSONString() string {
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

func (o *DeleteCreatingServerCountQueueBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteCreatingServerCountQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteCreatingServerCountQueueUnauthorized creates a DeleteCreatingServerCountQueueUnauthorized with default headers values
func NewDeleteCreatingServerCountQueueUnauthorized() *DeleteCreatingServerCountQueueUnauthorized {
	return &DeleteCreatingServerCountQueueUnauthorized{}
}

/*DeleteCreatingServerCountQueueUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteCreatingServerCountQueueUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteCreatingServerCountQueueUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues][%d] deleteCreatingServerCountQueueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteCreatingServerCountQueueUnauthorized) ToJSONString() string {
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

func (o *DeleteCreatingServerCountQueueUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteCreatingServerCountQueueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteCreatingServerCountQueueNotFound creates a DeleteCreatingServerCountQueueNotFound with default headers values
func NewDeleteCreatingServerCountQueueNotFound() *DeleteCreatingServerCountQueueNotFound {
	return &DeleteCreatingServerCountQueueNotFound{}
}

/*DeleteCreatingServerCountQueueNotFound handles this case with default header values.

  deployment not found
*/
type DeleteCreatingServerCountQueueNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteCreatingServerCountQueueNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues][%d] deleteCreatingServerCountQueueNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteCreatingServerCountQueueNotFound) ToJSONString() string {
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

func (o *DeleteCreatingServerCountQueueNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteCreatingServerCountQueueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteCreatingServerCountQueueInternalServerError creates a DeleteCreatingServerCountQueueInternalServerError with default headers values
func NewDeleteCreatingServerCountQueueInternalServerError() *DeleteCreatingServerCountQueueInternalServerError {
	return &DeleteCreatingServerCountQueueInternalServerError{}
}

/*DeleteCreatingServerCountQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteCreatingServerCountQueueInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteCreatingServerCountQueueInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues][%d] deleteCreatingServerCountQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteCreatingServerCountQueueInternalServerError) ToJSONString() string {
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

func (o *DeleteCreatingServerCountQueueInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteCreatingServerCountQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
