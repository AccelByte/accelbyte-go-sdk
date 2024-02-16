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

// ListAllQueueReader is a Reader for the ListAllQueue structure.
type ListAllQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListAllQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListAllQueueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListAllQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListAllQueueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListAllQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/namespaces/{namespace}/artifacts/queues/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListAllQueueOK creates a ListAllQueueOK with default headers values
func NewListAllQueueOK() *ListAllQueueOK {
	return &ListAllQueueOK{}
}

/*ListAllQueueOK handles this case with default header values.

  get all queue success.
*/
type ListAllQueueOK struct {
	Payload *dsartifactclientmodels.ModelsListAllQueueResponse
}

func (o *ListAllQueueOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/all][%d] listAllQueueOK  %+v", 200, o.ToJSONString())
}

func (o *ListAllQueueOK) ToJSONString() string {
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

func (o *ListAllQueueOK) GetPayload() *dsartifactclientmodels.ModelsListAllQueueResponse {
	return o.Payload
}

func (o *ListAllQueueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsListAllQueueResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListAllQueueBadRequest creates a ListAllQueueBadRequest with default headers values
func NewListAllQueueBadRequest() *ListAllQueueBadRequest {
	return &ListAllQueueBadRequest{}
}

/*ListAllQueueBadRequest handles this case with default header values.

  Bad Request
*/
type ListAllQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllQueueBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/all][%d] listAllQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListAllQueueBadRequest) ToJSONString() string {
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

func (o *ListAllQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListAllQueueNotFound creates a ListAllQueueNotFound with default headers values
func NewListAllQueueNotFound() *ListAllQueueNotFound {
	return &ListAllQueueNotFound{}
}

/*ListAllQueueNotFound handles this case with default header values.

  Not Found
*/
type ListAllQueueNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllQueueNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/all][%d] listAllQueueNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListAllQueueNotFound) ToJSONString() string {
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

func (o *ListAllQueueNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllQueueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListAllQueueInternalServerError creates a ListAllQueueInternalServerError with default headers values
func NewListAllQueueInternalServerError() *ListAllQueueInternalServerError {
	return &ListAllQueueInternalServerError{}
}

/*ListAllQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListAllQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllQueueInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/all][%d] listAllQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListAllQueueInternalServerError) ToJSONString() string {
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

func (o *ListAllQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
