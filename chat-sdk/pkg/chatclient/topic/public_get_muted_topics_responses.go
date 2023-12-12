// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// PublicGetMutedTopicsReader is a Reader for the PublicGetMutedTopics structure.
type PublicGetMutedTopicsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMutedTopicsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMutedTopicsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetMutedTopicsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMutedTopicsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMutedTopicsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMutedTopicsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/public/namespaces/{namespace}/muted returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMutedTopicsOK creates a PublicGetMutedTopicsOK with default headers values
func NewPublicGetMutedTopicsOK() *PublicGetMutedTopicsOK {
	return &PublicGetMutedTopicsOK{}
}

/*PublicGetMutedTopicsOK handles this case with default header values.

  OK
*/
type PublicGetMutedTopicsOK struct {
	Payload []*chatclientmodels.APIMutedTopicResponse
}

func (o *PublicGetMutedTopicsOK) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/muted][%d] publicGetMutedTopicsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMutedTopicsOK) ToJSONString() string {
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

func (o *PublicGetMutedTopicsOK) GetPayload() []*chatclientmodels.APIMutedTopicResponse {
	return o.Payload
}

func (o *PublicGetMutedTopicsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMutedTopicsBadRequest creates a PublicGetMutedTopicsBadRequest with default headers values
func NewPublicGetMutedTopicsBadRequest() *PublicGetMutedTopicsBadRequest {
	return &PublicGetMutedTopicsBadRequest{}
}

/*PublicGetMutedTopicsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetMutedTopicsBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetMutedTopicsBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/muted][%d] publicGetMutedTopicsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetMutedTopicsBadRequest) ToJSONString() string {
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

func (o *PublicGetMutedTopicsBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetMutedTopicsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMutedTopicsUnauthorized creates a PublicGetMutedTopicsUnauthorized with default headers values
func NewPublicGetMutedTopicsUnauthorized() *PublicGetMutedTopicsUnauthorized {
	return &PublicGetMutedTopicsUnauthorized{}
}

/*PublicGetMutedTopicsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetMutedTopicsUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetMutedTopicsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/muted][%d] publicGetMutedTopicsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMutedTopicsUnauthorized) ToJSONString() string {
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

func (o *PublicGetMutedTopicsUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetMutedTopicsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMutedTopicsForbidden creates a PublicGetMutedTopicsForbidden with default headers values
func NewPublicGetMutedTopicsForbidden() *PublicGetMutedTopicsForbidden {
	return &PublicGetMutedTopicsForbidden{}
}

/*PublicGetMutedTopicsForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetMutedTopicsForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetMutedTopicsForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/muted][%d] publicGetMutedTopicsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMutedTopicsForbidden) ToJSONString() string {
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

func (o *PublicGetMutedTopicsForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetMutedTopicsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMutedTopicsInternalServerError creates a PublicGetMutedTopicsInternalServerError with default headers values
func NewPublicGetMutedTopicsInternalServerError() *PublicGetMutedTopicsInternalServerError {
	return &PublicGetMutedTopicsInternalServerError{}
}

/*PublicGetMutedTopicsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetMutedTopicsInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetMutedTopicsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/muted][%d] publicGetMutedTopicsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMutedTopicsInternalServerError) ToJSONString() string {
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

func (o *PublicGetMutedTopicsInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetMutedTopicsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
