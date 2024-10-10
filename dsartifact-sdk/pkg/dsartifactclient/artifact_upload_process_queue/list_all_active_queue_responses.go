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

// ListAllActiveQueueReader is a Reader for the ListAllActiveQueue structure.
type ListAllActiveQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListAllActiveQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListAllActiveQueueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListAllActiveQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListAllActiveQueueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListAllActiveQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/namespaces/{namespace}/artifacts/queues/active/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListAllActiveQueueOK creates a ListAllActiveQueueOK with default headers values
func NewListAllActiveQueueOK() *ListAllActiveQueueOK {
	return &ListAllActiveQueueOK{}
}

/*ListAllActiveQueueOK handles this case with default header values.

  get all active queue success.
*/
type ListAllActiveQueueOK struct {
	Payload *dsartifactclientmodels.ModelsListAllQueueResponse
}

func (o *ListAllActiveQueueOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/active/all][%d] listAllActiveQueueOK  %+v", 200, o.ToJSONString())
}

func (o *ListAllActiveQueueOK) ToJSONString() string {
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

func (o *ListAllActiveQueueOK) GetPayload() *dsartifactclientmodels.ModelsListAllQueueResponse {
	return o.Payload
}

func (o *ListAllActiveQueueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllActiveQueueBadRequest creates a ListAllActiveQueueBadRequest with default headers values
func NewListAllActiveQueueBadRequest() *ListAllActiveQueueBadRequest {
	return &ListAllActiveQueueBadRequest{}
}

/*ListAllActiveQueueBadRequest handles this case with default header values.

  Bad Request
*/
type ListAllActiveQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllActiveQueueBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/active/all][%d] listAllActiveQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListAllActiveQueueBadRequest) ToJSONString() string {
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

func (o *ListAllActiveQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllActiveQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllActiveQueueNotFound creates a ListAllActiveQueueNotFound with default headers values
func NewListAllActiveQueueNotFound() *ListAllActiveQueueNotFound {
	return &ListAllActiveQueueNotFound{}
}

/*ListAllActiveQueueNotFound handles this case with default header values.

  Not Found
*/
type ListAllActiveQueueNotFound struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllActiveQueueNotFound) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/active/all][%d] listAllActiveQueueNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListAllActiveQueueNotFound) ToJSONString() string {
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

func (o *ListAllActiveQueueNotFound) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllActiveQueueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllActiveQueueInternalServerError creates a ListAllActiveQueueInternalServerError with default headers values
func NewListAllActiveQueueInternalServerError() *ListAllActiveQueueInternalServerError {
	return &ListAllActiveQueueInternalServerError{}
}

/*ListAllActiveQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListAllActiveQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListAllActiveQueueInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/artifacts/queues/active/all][%d] listAllActiveQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListAllActiveQueueInternalServerError) ToJSONString() string {
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

func (o *ListAllActiveQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllActiveQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
