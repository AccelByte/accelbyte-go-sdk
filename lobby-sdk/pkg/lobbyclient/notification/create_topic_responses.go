// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// CreateTopicReader is a Reader for the CreateTopic structure.
type CreateTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateTopicCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateTopicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateTopicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateTopicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateTopicConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateTopicCreated creates a CreateTopicCreated with default headers values
func NewCreateTopicCreated() *CreateTopicCreated {
	return &CreateTopicCreated{}
}

/*CreateTopicCreated handles this case with default header values.

  Created
*/
type CreateTopicCreated struct {
}

func (o *CreateTopicCreated) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/topics][%d] createTopicCreated ", 201)
}

func (o *CreateTopicCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateTopicBadRequest creates a CreateTopicBadRequest with default headers values
func NewCreateTopicBadRequest() *CreateTopicBadRequest {
	return &CreateTopicBadRequest{}
}

/*CreateTopicBadRequest handles this case with default header values.

  Bad Request
*/
type CreateTopicBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTopicBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/topics][%d] createTopicBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateTopicBadRequest) ToJSONString() string {
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

func (o *CreateTopicBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTopicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicUnauthorized creates a CreateTopicUnauthorized with default headers values
func NewCreateTopicUnauthorized() *CreateTopicUnauthorized {
	return &CreateTopicUnauthorized{}
}

/*CreateTopicUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateTopicUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTopicUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/topics][%d] createTopicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateTopicUnauthorized) ToJSONString() string {
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

func (o *CreateTopicUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTopicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicForbidden creates a CreateTopicForbidden with default headers values
func NewCreateTopicForbidden() *CreateTopicForbidden {
	return &CreateTopicForbidden{}
}

/*CreateTopicForbidden handles this case with default header values.

  Forbidden
*/
type CreateTopicForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTopicForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/topics][%d] createTopicForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateTopicForbidden) ToJSONString() string {
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

func (o *CreateTopicForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTopicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicConflict creates a CreateTopicConflict with default headers values
func NewCreateTopicConflict() *CreateTopicConflict {
	return &CreateTopicConflict{}
}

/*CreateTopicConflict handles this case with default header values.

  Conflict
*/
type CreateTopicConflict struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTopicConflict) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/topics][%d] createTopicConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateTopicConflict) ToJSONString() string {
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

func (o *CreateTopicConflict) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTopicConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
