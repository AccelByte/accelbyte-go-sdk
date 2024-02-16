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

// ListQueueReader is a Reader for the ListQueue structure.
type ListQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListQueueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListQueueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListQueueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/artifacts/queues returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListQueueOK creates a ListQueueOK with default headers values
func NewListQueueOK() *ListQueueOK {
	return &ListQueueOK{}
}

/*ListQueueOK handles this case with default header values.

  OK
*/
type ListQueueOK struct {
	Payload *dsartifactclientmodels.ModelsListQueueResponse
}

func (o *ListQueueOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues][%d] listQueueOK  %+v", 200, o.ToJSONString())
}

func (o *ListQueueOK) ToJSONString() string {
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

func (o *ListQueueOK) GetPayload() *dsartifactclientmodels.ModelsListQueueResponse {
	return o.Payload
}

func (o *ListQueueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsListQueueResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListQueueBadRequest creates a ListQueueBadRequest with default headers values
func NewListQueueBadRequest() *ListQueueBadRequest {
	return &ListQueueBadRequest{}
}

/*ListQueueBadRequest handles this case with default header values.

  Bad Request
*/
type ListQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListQueueBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues][%d] listQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListQueueBadRequest) ToJSONString() string {
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

func (o *ListQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListQueueUnauthorized creates a ListQueueUnauthorized with default headers values
func NewListQueueUnauthorized() *ListQueueUnauthorized {
	return &ListQueueUnauthorized{}
}

/*ListQueueUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListQueueUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListQueueUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues][%d] listQueueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListQueueUnauthorized) ToJSONString() string {
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

func (o *ListQueueUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListQueueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListQueueNotFound creates a ListQueueNotFound with default headers values
func NewListQueueNotFound() *ListQueueNotFound {
	return &ListQueueNotFound{}
}

/*ListQueueNotFound handles this case with default header values.

  Not Found
*/
type ListQueueNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListQueueNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues][%d] listQueueNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListQueueNotFound) ToJSONString() string {
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

func (o *ListQueueNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListQueueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListQueueInternalServerError creates a ListQueueInternalServerError with default headers values
func NewListQueueInternalServerError() *ListQueueInternalServerError {
	return &ListQueueInternalServerError{}
}

/*ListQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListQueueInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/artifacts/queues][%d] listQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListQueueInternalServerError) ToJSONString() string {
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

func (o *ListQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
