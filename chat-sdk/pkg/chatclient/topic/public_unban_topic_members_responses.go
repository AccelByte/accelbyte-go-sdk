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

// PublicUnbanTopicMembersReader is a Reader for the PublicUnbanTopicMembers structure.
type PublicUnbanTopicMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUnbanTopicMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUnbanTopicMembersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUnbanTopicMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUnbanTopicMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUnbanTopicMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUnbanTopicMembersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUnbanTopicMembersOK creates a PublicUnbanTopicMembersOK with default headers values
func NewPublicUnbanTopicMembersOK() *PublicUnbanTopicMembersOK {
	return &PublicUnbanTopicMembersOK{}
}

/*PublicUnbanTopicMembersOK handles this case with default header values.


 */
type PublicUnbanTopicMembersOK struct {
	Payload *chatclientmodels.ModelsPublicUnbanTopicMembersResponse
}

func (o *PublicUnbanTopicMembersOK) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members][%d] publicUnbanTopicMembersOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUnbanTopicMembersOK) ToJSONString() string {
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

func (o *PublicUnbanTopicMembersOK) GetPayload() *chatclientmodels.ModelsPublicUnbanTopicMembersResponse {
	return o.Payload
}

func (o *PublicUnbanTopicMembersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsPublicUnbanTopicMembersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUnbanTopicMembersBadRequest creates a PublicUnbanTopicMembersBadRequest with default headers values
func NewPublicUnbanTopicMembersBadRequest() *PublicUnbanTopicMembersBadRequest {
	return &PublicUnbanTopicMembersBadRequest{}
}

/*PublicUnbanTopicMembersBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUnbanTopicMembersBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnbanTopicMembersBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members][%d] publicUnbanTopicMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUnbanTopicMembersBadRequest) ToJSONString() string {
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

func (o *PublicUnbanTopicMembersBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnbanTopicMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnbanTopicMembersUnauthorized creates a PublicUnbanTopicMembersUnauthorized with default headers values
func NewPublicUnbanTopicMembersUnauthorized() *PublicUnbanTopicMembersUnauthorized {
	return &PublicUnbanTopicMembersUnauthorized{}
}

/*PublicUnbanTopicMembersUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUnbanTopicMembersUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnbanTopicMembersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members][%d] publicUnbanTopicMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUnbanTopicMembersUnauthorized) ToJSONString() string {
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

func (o *PublicUnbanTopicMembersUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnbanTopicMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnbanTopicMembersForbidden creates a PublicUnbanTopicMembersForbidden with default headers values
func NewPublicUnbanTopicMembersForbidden() *PublicUnbanTopicMembersForbidden {
	return &PublicUnbanTopicMembersForbidden{}
}

/*PublicUnbanTopicMembersForbidden handles this case with default header values.

  Forbidden
*/
type PublicUnbanTopicMembersForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnbanTopicMembersForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members][%d] publicUnbanTopicMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUnbanTopicMembersForbidden) ToJSONString() string {
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

func (o *PublicUnbanTopicMembersForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnbanTopicMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnbanTopicMembersInternalServerError creates a PublicUnbanTopicMembersInternalServerError with default headers values
func NewPublicUnbanTopicMembersInternalServerError() *PublicUnbanTopicMembersInternalServerError {
	return &PublicUnbanTopicMembersInternalServerError{}
}

/*PublicUnbanTopicMembersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUnbanTopicMembersInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnbanTopicMembersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/unban-members][%d] publicUnbanTopicMembersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUnbanTopicMembersInternalServerError) ToJSONString() string {
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

func (o *PublicUnbanTopicMembersInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnbanTopicMembersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
