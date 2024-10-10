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

// DeleteQueueReader is a Reader for the DeleteQueue structure.
type DeleteQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteQueueNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsartifact/namespaces/{namespace}/artifacts/queues returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteQueueNoContent creates a DeleteQueueNoContent with default headers values
func NewDeleteQueueNoContent() *DeleteQueueNoContent {
	return &DeleteQueueNoContent{}
}

/*DeleteQueueNoContent handles this case with default header values.

  delete queue success.
*/
type DeleteQueueNoContent struct {
}

func (o *DeleteQueueNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/namespaces/{namespace}/artifacts/queues][%d] deleteQueueNoContent ", 204)
}

func (o *DeleteQueueNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteQueueBadRequest creates a DeleteQueueBadRequest with default headers values
func NewDeleteQueueBadRequest() *DeleteQueueBadRequest {
	return &DeleteQueueBadRequest{}
}

/*DeleteQueueBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteQueueBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/namespaces/{namespace}/artifacts/queues][%d] deleteQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteQueueBadRequest) ToJSONString() string {
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

func (o *DeleteQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteQueueInternalServerError creates a DeleteQueueInternalServerError with default headers values
func NewDeleteQueueInternalServerError() *DeleteQueueInternalServerError {
	return &DeleteQueueInternalServerError{}
}

/*DeleteQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteQueueInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/namespaces/{namespace}/artifacts/queues][%d] deleteQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteQueueInternalServerError) ToJSONString() string {
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

func (o *DeleteQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
