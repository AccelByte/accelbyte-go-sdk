// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// DeletePodConfigClientReader is a Reader for the DeletePodConfigClient structure.
type DeletePodConfigClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePodConfigClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePodConfigClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeletePodConfigClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeletePodConfigClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeletePodConfigClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeletePodConfigClientConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeletePodConfigClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePodConfigClientNoContent creates a DeletePodConfigClientNoContent with default headers values
func NewDeletePodConfigClientNoContent() *DeletePodConfigClientNoContent {
	return &DeletePodConfigClientNoContent{}
}

/*DeletePodConfigClientNoContent handles this case with default header values.

  pod config deleted
*/
type DeletePodConfigClientNoContent struct {
}

func (o *DeletePodConfigClientNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientNoContent ", 204)
}

func (o *DeletePodConfigClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeletePodConfigClientBadRequest creates a DeletePodConfigClientBadRequest with default headers values
func NewDeletePodConfigClientBadRequest() *DeletePodConfigClientBadRequest {
	return &DeletePodConfigClientBadRequest{}
}

/*DeletePodConfigClientBadRequest handles this case with default header values.

  malformed request
*/
type DeletePodConfigClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeletePodConfigClientBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeletePodConfigClientBadRequest) ToJSONString() string {
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

func (o *DeletePodConfigClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeletePodConfigClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePodConfigClientUnauthorized creates a DeletePodConfigClientUnauthorized with default headers values
func NewDeletePodConfigClientUnauthorized() *DeletePodConfigClientUnauthorized {
	return &DeletePodConfigClientUnauthorized{}
}

/*DeletePodConfigClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeletePodConfigClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeletePodConfigClientUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeletePodConfigClientUnauthorized) ToJSONString() string {
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

func (o *DeletePodConfigClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeletePodConfigClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePodConfigClientNotFound creates a DeletePodConfigClientNotFound with default headers values
func NewDeletePodConfigClientNotFound() *DeletePodConfigClientNotFound {
	return &DeletePodConfigClientNotFound{}
}

/*DeletePodConfigClientNotFound handles this case with default header values.

  pod config not found
*/
type DeletePodConfigClientNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeletePodConfigClientNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeletePodConfigClientNotFound) ToJSONString() string {
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

func (o *DeletePodConfigClientNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeletePodConfigClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePodConfigClientConflict creates a DeletePodConfigClientConflict with default headers values
func NewDeletePodConfigClientConflict() *DeletePodConfigClientConflict {
	return &DeletePodConfigClientConflict{}
}

/*DeletePodConfigClientConflict handles this case with default header values.

  pod config in use
*/
type DeletePodConfigClientConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeletePodConfigClientConflict) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientConflict  %+v", 409, o.ToJSONString())
}

func (o *DeletePodConfigClientConflict) ToJSONString() string {
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

func (o *DeletePodConfigClientConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeletePodConfigClientConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePodConfigClientInternalServerError creates a DeletePodConfigClientInternalServerError with default headers values
func NewDeletePodConfigClientInternalServerError() *DeletePodConfigClientInternalServerError {
	return &DeletePodConfigClientInternalServerError{}
}

/*DeletePodConfigClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeletePodConfigClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeletePodConfigClientInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] deletePodConfigClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeletePodConfigClientInternalServerError) ToJSONString() string {
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

func (o *DeletePodConfigClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeletePodConfigClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
