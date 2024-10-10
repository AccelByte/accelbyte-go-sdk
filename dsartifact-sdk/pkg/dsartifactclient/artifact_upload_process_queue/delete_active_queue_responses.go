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

// DeleteActiveQueueReader is a Reader for the DeleteActiveQueue structure.
type DeleteActiveQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteActiveQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteActiveQueueNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteActiveQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteActiveQueueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteActiveQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsartifact/artifacts/queues/active returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteActiveQueueNoContent creates a DeleteActiveQueueNoContent with default headers values
func NewDeleteActiveQueueNoContent() *DeleteActiveQueueNoContent {
	return &DeleteActiveQueueNoContent{}
}

/*DeleteActiveQueueNoContent handles this case with default header values.

  No Content
*/
type DeleteActiveQueueNoContent struct {
}

func (o *DeleteActiveQueueNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/queues/active][%d] deleteActiveQueueNoContent ", 204)
}

func (o *DeleteActiveQueueNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteActiveQueueBadRequest creates a DeleteActiveQueueBadRequest with default headers values
func NewDeleteActiveQueueBadRequest() *DeleteActiveQueueBadRequest {
	return &DeleteActiveQueueBadRequest{}
}

/*DeleteActiveQueueBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteActiveQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteActiveQueueBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/queues/active][%d] deleteActiveQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteActiveQueueBadRequest) ToJSONString() string {
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

func (o *DeleteActiveQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteActiveQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteActiveQueueUnauthorized creates a DeleteActiveQueueUnauthorized with default headers values
func NewDeleteActiveQueueUnauthorized() *DeleteActiveQueueUnauthorized {
	return &DeleteActiveQueueUnauthorized{}
}

/*DeleteActiveQueueUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteActiveQueueUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteActiveQueueUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/queues/active][%d] deleteActiveQueueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteActiveQueueUnauthorized) ToJSONString() string {
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

func (o *DeleteActiveQueueUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteActiveQueueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteActiveQueueInternalServerError creates a DeleteActiveQueueInternalServerError with default headers values
func NewDeleteActiveQueueInternalServerError() *DeleteActiveQueueInternalServerError {
	return &DeleteActiveQueueInternalServerError{}
}

/*DeleteActiveQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteActiveQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteActiveQueueInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/queues/active][%d] deleteActiveQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteActiveQueueInternalServerError) ToJSONString() string {
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

func (o *DeleteActiveQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteActiveQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
