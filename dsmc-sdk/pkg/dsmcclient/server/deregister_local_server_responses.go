// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

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

// DeregisterLocalServerReader is a Reader for the DeregisterLocalServer structure.
type DeregisterLocalServerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeregisterLocalServerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeregisterLocalServerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeregisterLocalServerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeregisterLocalServerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeregisterLocalServerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/servers/local/deregister returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeregisterLocalServerNoContent creates a DeregisterLocalServerNoContent with default headers values
func NewDeregisterLocalServerNoContent() *DeregisterLocalServerNoContent {
	return &DeregisterLocalServerNoContent{}
}

/*DeregisterLocalServerNoContent handles this case with default header values.

  server removed
*/
type DeregisterLocalServerNoContent struct {
}

func (o *DeregisterLocalServerNoContent) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/local/deregister][%d] deregisterLocalServerNoContent ", 204)
}

func (o *DeregisterLocalServerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeregisterLocalServerBadRequest creates a DeregisterLocalServerBadRequest with default headers values
func NewDeregisterLocalServerBadRequest() *DeregisterLocalServerBadRequest {
	return &DeregisterLocalServerBadRequest{}
}

/*DeregisterLocalServerBadRequest handles this case with default header values.

  malformed request
*/
type DeregisterLocalServerBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeregisterLocalServerBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/local/deregister][%d] deregisterLocalServerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeregisterLocalServerBadRequest) ToJSONString() string {
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

func (o *DeregisterLocalServerBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeregisterLocalServerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeregisterLocalServerUnauthorized creates a DeregisterLocalServerUnauthorized with default headers values
func NewDeregisterLocalServerUnauthorized() *DeregisterLocalServerUnauthorized {
	return &DeregisterLocalServerUnauthorized{}
}

/*DeregisterLocalServerUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeregisterLocalServerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeregisterLocalServerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/local/deregister][%d] deregisterLocalServerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeregisterLocalServerUnauthorized) ToJSONString() string {
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

func (o *DeregisterLocalServerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeregisterLocalServerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeregisterLocalServerInternalServerError creates a DeregisterLocalServerInternalServerError with default headers values
func NewDeregisterLocalServerInternalServerError() *DeregisterLocalServerInternalServerError {
	return &DeregisterLocalServerInternalServerError{}
}

/*DeregisterLocalServerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeregisterLocalServerInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeregisterLocalServerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/local/deregister][%d] deregisterLocalServerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeregisterLocalServerInternalServerError) ToJSONString() string {
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

func (o *DeregisterLocalServerInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeregisterLocalServerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
