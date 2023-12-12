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

// PublicUnmuteUserReader is a Reader for the PublicUnmuteUser structure.
type PublicUnmuteUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUnmuteUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUnmuteUserNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUnmuteUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUnmuteUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUnmuteUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUnmuteUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUnmuteUserNoContent creates a PublicUnmuteUserNoContent with default headers values
func NewPublicUnmuteUserNoContent() *PublicUnmuteUserNoContent {
	return &PublicUnmuteUserNoContent{}
}

/*PublicUnmuteUserNoContent handles this case with default header values.

  No Content
*/
type PublicUnmuteUserNoContent struct {
}

func (o *PublicUnmuteUserNoContent) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute][%d] publicUnmuteUserNoContent ", 204)
}

func (o *PublicUnmuteUserNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUnmuteUserBadRequest creates a PublicUnmuteUserBadRequest with default headers values
func NewPublicUnmuteUserBadRequest() *PublicUnmuteUserBadRequest {
	return &PublicUnmuteUserBadRequest{}
}

/*PublicUnmuteUserBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUnmuteUserBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnmuteUserBadRequest) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute][%d] publicUnmuteUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUnmuteUserBadRequest) ToJSONString() string {
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

func (o *PublicUnmuteUserBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnmuteUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnmuteUserUnauthorized creates a PublicUnmuteUserUnauthorized with default headers values
func NewPublicUnmuteUserUnauthorized() *PublicUnmuteUserUnauthorized {
	return &PublicUnmuteUserUnauthorized{}
}

/*PublicUnmuteUserUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUnmuteUserUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnmuteUserUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute][%d] publicUnmuteUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUnmuteUserUnauthorized) ToJSONString() string {
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

func (o *PublicUnmuteUserUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnmuteUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnmuteUserForbidden creates a PublicUnmuteUserForbidden with default headers values
func NewPublicUnmuteUserForbidden() *PublicUnmuteUserForbidden {
	return &PublicUnmuteUserForbidden{}
}

/*PublicUnmuteUserForbidden handles this case with default header values.

  Forbidden
*/
type PublicUnmuteUserForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnmuteUserForbidden) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute][%d] publicUnmuteUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUnmuteUserForbidden) ToJSONString() string {
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

func (o *PublicUnmuteUserForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnmuteUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnmuteUserInternalServerError creates a PublicUnmuteUserInternalServerError with default headers values
func NewPublicUnmuteUserInternalServerError() *PublicUnmuteUserInternalServerError {
	return &PublicUnmuteUserInternalServerError{}
}

/*PublicUnmuteUserInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUnmuteUserInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnmuteUserInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/unmute][%d] publicUnmuteUserInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUnmuteUserInternalServerError) ToJSONString() string {
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

func (o *PublicUnmuteUserInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnmuteUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
