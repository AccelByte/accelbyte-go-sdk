// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

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

// ClaimServerReader is a Reader for the ClaimServer structure.
type ClaimServerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ClaimServerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewClaimServerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewClaimServerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewClaimServerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewClaimServerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 425:
		result := NewClaimServerTooEarly()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewClaimServerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewClaimServerServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/sessions/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewClaimServerNoContent creates a ClaimServerNoContent with default headers values
func NewClaimServerNoContent() *ClaimServerNoContent {
	return &ClaimServerNoContent{}
}

/*ClaimServerNoContent handles this case with default header values.

  DS claimed for session
*/
type ClaimServerNoContent struct {
}

func (o *ClaimServerNoContent) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerNoContent ", 204)
}

func (o *ClaimServerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewClaimServerUnauthorized creates a ClaimServerUnauthorized with default headers values
func NewClaimServerUnauthorized() *ClaimServerUnauthorized {
	return &ClaimServerUnauthorized{}
}

/*ClaimServerUnauthorized handles this case with default header values.

  Unauthorized
*/
type ClaimServerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ClaimServerUnauthorized) ToJSONString() string {
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

func (o *ClaimServerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewClaimServerNotFound creates a ClaimServerNotFound with default headers values
func NewClaimServerNotFound() *ClaimServerNotFound {
	return &ClaimServerNotFound{}
}

/*ClaimServerNotFound handles this case with default header values.

  session not found
*/
type ClaimServerNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerNotFound  %+v", 404, o.ToJSONString())
}

func (o *ClaimServerNotFound) ToJSONString() string {
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

func (o *ClaimServerNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewClaimServerConflict creates a ClaimServerConflict with default headers values
func NewClaimServerConflict() *ClaimServerConflict {
	return &ClaimServerConflict{}
}

/*ClaimServerConflict handles this case with default header values.

  DS is already claimed
*/
type ClaimServerConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerConflict  %+v", 409, o.ToJSONString())
}

func (o *ClaimServerConflict) ToJSONString() string {
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

func (o *ClaimServerConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewClaimServerTooEarly creates a ClaimServerTooEarly with default headers values
func NewClaimServerTooEarly() *ClaimServerTooEarly {
	return &ClaimServerTooEarly{}
}

/*ClaimServerTooEarly handles this case with default header values.

  DS is not ready to be claimed
*/
type ClaimServerTooEarly struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerTooEarly) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerTooEarly  %+v", 425, o.ToJSONString())
}

func (o *ClaimServerTooEarly) ToJSONString() string {
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

func (o *ClaimServerTooEarly) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerTooEarly) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewClaimServerInternalServerError creates a ClaimServerInternalServerError with default headers values
func NewClaimServerInternalServerError() *ClaimServerInternalServerError {
	return &ClaimServerInternalServerError{}
}

/*ClaimServerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ClaimServerInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ClaimServerInternalServerError) ToJSONString() string {
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

func (o *ClaimServerInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewClaimServerServiceUnavailable creates a ClaimServerServiceUnavailable with default headers values
func NewClaimServerServiceUnavailable() *ClaimServerServiceUnavailable {
	return &ClaimServerServiceUnavailable{}
}

/*ClaimServerServiceUnavailable handles this case with default header values.

  DS is unreachable
*/
type ClaimServerServiceUnavailable struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ClaimServerServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions/claim][%d] claimServerServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *ClaimServerServiceUnavailable) ToJSONString() string {
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

func (o *ClaimServerServiceUnavailable) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimServerServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
