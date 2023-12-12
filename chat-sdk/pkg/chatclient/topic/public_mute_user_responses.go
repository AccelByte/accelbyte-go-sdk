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

// PublicMuteUserReader is a Reader for the PublicMuteUser structure.
type PublicMuteUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicMuteUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicMuteUserNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicMuteUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicMuteUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicMuteUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicMuteUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicMuteUserNoContent creates a PublicMuteUserNoContent with default headers values
func NewPublicMuteUserNoContent() *PublicMuteUserNoContent {
	return &PublicMuteUserNoContent{}
}

/*PublicMuteUserNoContent handles this case with default header values.

  No Content
*/
type PublicMuteUserNoContent struct {
}

func (o *PublicMuteUserNoContent) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute][%d] publicMuteUserNoContent ", 204)
}

func (o *PublicMuteUserNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicMuteUserBadRequest creates a PublicMuteUserBadRequest with default headers values
func NewPublicMuteUserBadRequest() *PublicMuteUserBadRequest {
	return &PublicMuteUserBadRequest{}
}

/*PublicMuteUserBadRequest handles this case with default header values.

  Bad Request
*/
type PublicMuteUserBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicMuteUserBadRequest) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute][%d] publicMuteUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicMuteUserBadRequest) ToJSONString() string {
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

func (o *PublicMuteUserBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicMuteUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicMuteUserUnauthorized creates a PublicMuteUserUnauthorized with default headers values
func NewPublicMuteUserUnauthorized() *PublicMuteUserUnauthorized {
	return &PublicMuteUserUnauthorized{}
}

/*PublicMuteUserUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicMuteUserUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicMuteUserUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute][%d] publicMuteUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicMuteUserUnauthorized) ToJSONString() string {
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

func (o *PublicMuteUserUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicMuteUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicMuteUserForbidden creates a PublicMuteUserForbidden with default headers values
func NewPublicMuteUserForbidden() *PublicMuteUserForbidden {
	return &PublicMuteUserForbidden{}
}

/*PublicMuteUserForbidden handles this case with default header values.

  Forbidden
*/
type PublicMuteUserForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicMuteUserForbidden) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute][%d] publicMuteUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicMuteUserForbidden) ToJSONString() string {
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

func (o *PublicMuteUserForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicMuteUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicMuteUserInternalServerError creates a PublicMuteUserInternalServerError with default headers values
func NewPublicMuteUserInternalServerError() *PublicMuteUserInternalServerError {
	return &PublicMuteUserInternalServerError{}
}

/*PublicMuteUserInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicMuteUserInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicMuteUserInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /chat/public/namespaces/{namespace}/topic/{topic}/mute][%d] publicMuteUserInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicMuteUserInternalServerError) ToJSONString() string {
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

func (o *PublicMuteUserInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicMuteUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
