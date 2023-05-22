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

// ServerHeartbeatReader is a Reader for the ServerHeartbeat structure.
type ServerHeartbeatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ServerHeartbeatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewServerHeartbeatAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewServerHeartbeatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewServerHeartbeatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewServerHeartbeatNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewServerHeartbeatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat returns an error %d: %s", response.Code(), string(data))
	}
}

// NewServerHeartbeatAccepted creates a ServerHeartbeatAccepted with default headers values
func NewServerHeartbeatAccepted() *ServerHeartbeatAccepted {
	return &ServerHeartbeatAccepted{}
}

/*ServerHeartbeatAccepted handles this case with default header values.

  heartbeat accepted
*/
type ServerHeartbeatAccepted struct {
}

func (o *ServerHeartbeatAccepted) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat][%d] serverHeartbeatAccepted ", 202)
}

func (o *ServerHeartbeatAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewServerHeartbeatBadRequest creates a ServerHeartbeatBadRequest with default headers values
func NewServerHeartbeatBadRequest() *ServerHeartbeatBadRequest {
	return &ServerHeartbeatBadRequest{}
}

/*ServerHeartbeatBadRequest handles this case with default header values.

  malformed request
*/
type ServerHeartbeatBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ServerHeartbeatBadRequest) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat][%d] serverHeartbeatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ServerHeartbeatBadRequest) ToJSONString() string {
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

func (o *ServerHeartbeatBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ServerHeartbeatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewServerHeartbeatUnauthorized creates a ServerHeartbeatUnauthorized with default headers values
func NewServerHeartbeatUnauthorized() *ServerHeartbeatUnauthorized {
	return &ServerHeartbeatUnauthorized{}
}

/*ServerHeartbeatUnauthorized handles this case with default header values.

  Unauthorized
*/
type ServerHeartbeatUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ServerHeartbeatUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat][%d] serverHeartbeatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ServerHeartbeatUnauthorized) ToJSONString() string {
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

func (o *ServerHeartbeatUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ServerHeartbeatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewServerHeartbeatNotFound creates a ServerHeartbeatNotFound with default headers values
func NewServerHeartbeatNotFound() *ServerHeartbeatNotFound {
	return &ServerHeartbeatNotFound{}
}

/*ServerHeartbeatNotFound handles this case with default header values.

  server not found
*/
type ServerHeartbeatNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ServerHeartbeatNotFound) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat][%d] serverHeartbeatNotFound  %+v", 404, o.ToJSONString())
}

func (o *ServerHeartbeatNotFound) ToJSONString() string {
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

func (o *ServerHeartbeatNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ServerHeartbeatNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewServerHeartbeatInternalServerError creates a ServerHeartbeatInternalServerError with default headers values
func NewServerHeartbeatInternalServerError() *ServerHeartbeatInternalServerError {
	return &ServerHeartbeatInternalServerError{}
}

/*ServerHeartbeatInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ServerHeartbeatInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ServerHeartbeatInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/namespaces/{namespace}/servers/heartbeat][%d] serverHeartbeatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ServerHeartbeatInternalServerError) ToJSONString() string {
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

func (o *ServerHeartbeatInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ServerHeartbeatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
