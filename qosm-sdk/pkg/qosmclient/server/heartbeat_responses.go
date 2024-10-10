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

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// HeartbeatReader is a Reader for the Heartbeat structure.
type HeartbeatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *HeartbeatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewHeartbeatNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewHeartbeatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewHeartbeatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /qosm/servers/heartbeat returns an error %d: %s", response.Code(), string(data))
	}
}

// NewHeartbeatNoContent creates a HeartbeatNoContent with default headers values
func NewHeartbeatNoContent() *HeartbeatNoContent {
	return &HeartbeatNoContent{}
}

/*HeartbeatNoContent handles this case with default header values.

  heartbeat received
*/
type HeartbeatNoContent struct {
}

func (o *HeartbeatNoContent) Error() string {
	return fmt.Sprintf("[POST /qosm/servers/heartbeat][%d] heartbeatNoContent ", 204)
}

func (o *HeartbeatNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewHeartbeatBadRequest creates a HeartbeatBadRequest with default headers values
func NewHeartbeatBadRequest() *HeartbeatBadRequest {
	return &HeartbeatBadRequest{}
}

/*HeartbeatBadRequest handles this case with default header values.

  malformed request
*/
type HeartbeatBadRequest struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *HeartbeatBadRequest) Error() string {
	return fmt.Sprintf("[POST /qosm/servers/heartbeat][%d] heartbeatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *HeartbeatBadRequest) ToJSONString() string {
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

func (o *HeartbeatBadRequest) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *HeartbeatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewHeartbeatInternalServerError creates a HeartbeatInternalServerError with default headers values
func NewHeartbeatInternalServerError() *HeartbeatInternalServerError {
	return &HeartbeatInternalServerError{}
}

/*HeartbeatInternalServerError handles this case with default header values.

  Internal Server Error
*/
type HeartbeatInternalServerError struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *HeartbeatInternalServerError) Error() string {
	return fmt.Sprintf("[POST /qosm/servers/heartbeat][%d] heartbeatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *HeartbeatInternalServerError) ToJSONString() string {
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

func (o *HeartbeatInternalServerError) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *HeartbeatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
