// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// GetActiveQueueReader is a Reader for the GetActiveQueue structure.
type GetActiveQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetActiveQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetActiveQueueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetActiveQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetActiveQueueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetActiveQueueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetActiveQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/artifacts/queues/active returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetActiveQueueOK creates a GetActiveQueueOK with default headers values
func NewGetActiveQueueOK() *GetActiveQueueOK {
	return &GetActiveQueueOK{}
}

/*GetActiveQueueOK handles this case with default header values.

  OK
*/
type GetActiveQueueOK struct {
	Payload *dsartifactclientmodels.ModelsQueue
}

func (o *GetActiveQueueOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues/active][%d] getActiveQueueOK  %+v", 200, o.ToJSONString())
}

func (o *GetActiveQueueOK) ToJSONString() string {
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

func (o *GetActiveQueueOK) GetPayload() *dsartifactclientmodels.ModelsQueue {
	return o.Payload
}

func (o *GetActiveQueueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsQueue)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveQueueBadRequest creates a GetActiveQueueBadRequest with default headers values
func NewGetActiveQueueBadRequest() *GetActiveQueueBadRequest {
	return &GetActiveQueueBadRequest{}
}

/*GetActiveQueueBadRequest handles this case with default header values.

  Bad Request
*/
type GetActiveQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *GetActiveQueueBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues/active][%d] getActiveQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetActiveQueueBadRequest) ToJSONString() string {
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

func (o *GetActiveQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *GetActiveQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveQueueUnauthorized creates a GetActiveQueueUnauthorized with default headers values
func NewGetActiveQueueUnauthorized() *GetActiveQueueUnauthorized {
	return &GetActiveQueueUnauthorized{}
}

/*GetActiveQueueUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetActiveQueueUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *GetActiveQueueUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues/active][%d] getActiveQueueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetActiveQueueUnauthorized) ToJSONString() string {
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

func (o *GetActiveQueueUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *GetActiveQueueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveQueueNotFound creates a GetActiveQueueNotFound with default headers values
func NewGetActiveQueueNotFound() *GetActiveQueueNotFound {
	return &GetActiveQueueNotFound{}
}

/*GetActiveQueueNotFound handles this case with default header values.

  Not Found
*/
type GetActiveQueueNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *GetActiveQueueNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues/active][%d] getActiveQueueNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetActiveQueueNotFound) ToJSONString() string {
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

func (o *GetActiveQueueNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *GetActiveQueueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveQueueInternalServerError creates a GetActiveQueueInternalServerError with default headers values
func NewGetActiveQueueInternalServerError() *GetActiveQueueInternalServerError {
	return &GetActiveQueueInternalServerError{}
}

/*GetActiveQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetActiveQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *GetActiveQueueInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues/active][%d] getActiveQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetActiveQueueInternalServerError) ToJSONString() string {
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

func (o *GetActiveQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *GetActiveQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
