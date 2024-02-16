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

// SetActiveQueueReader is a Reader for the SetActiveQueue structure.
type SetActiveQueueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetActiveQueueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSetActiveQueueNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetActiveQueueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetActiveQueueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSetActiveQueueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /dsartifact/artifacts/queues/active returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetActiveQueueNoContent creates a SetActiveQueueNoContent with default headers values
func NewSetActiveQueueNoContent() *SetActiveQueueNoContent {
	return &SetActiveQueueNoContent{}
}

/*SetActiveQueueNoContent handles this case with default header values.

  No Content
*/
type SetActiveQueueNoContent struct {
}

func (o *SetActiveQueueNoContent) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/active][%d] setActiveQueueNoContent ", 204)
}

func (o *SetActiveQueueNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSetActiveQueueBadRequest creates a SetActiveQueueBadRequest with default headers values
func NewSetActiveQueueBadRequest() *SetActiveQueueBadRequest {
	return &SetActiveQueueBadRequest{}
}

/*SetActiveQueueBadRequest handles this case with default header values.

  Bad Request
*/
type SetActiveQueueBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *SetActiveQueueBadRequest) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/active][%d] setActiveQueueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetActiveQueueBadRequest) ToJSONString() string {
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

func (o *SetActiveQueueBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *SetActiveQueueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetActiveQueueUnauthorized creates a SetActiveQueueUnauthorized with default headers values
func NewSetActiveQueueUnauthorized() *SetActiveQueueUnauthorized {
	return &SetActiveQueueUnauthorized{}
}

/*SetActiveQueueUnauthorized handles this case with default header values.

  Unauthorized
*/
type SetActiveQueueUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *SetActiveQueueUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/active][%d] setActiveQueueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetActiveQueueUnauthorized) ToJSONString() string {
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

func (o *SetActiveQueueUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *SetActiveQueueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetActiveQueueInternalServerError creates a SetActiveQueueInternalServerError with default headers values
func NewSetActiveQueueInternalServerError() *SetActiveQueueInternalServerError {
	return &SetActiveQueueInternalServerError{}
}

/*SetActiveQueueInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SetActiveQueueInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *SetActiveQueueInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /dsartifact/artifacts/queues/active][%d] setActiveQueueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SetActiveQueueInternalServerError) ToJSONString() string {
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

func (o *SetActiveQueueInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *SetActiveQueueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
