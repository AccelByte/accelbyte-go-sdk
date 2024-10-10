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

// AdminUnbanTopicMembersReader is a Reader for the AdminUnbanTopicMembers structure.
type AdminUnbanTopicMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUnbanTopicMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUnbanTopicMembersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUnbanTopicMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUnbanTopicMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUnbanTopicMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUnbanTopicMembersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUnbanTopicMembersOK creates a AdminUnbanTopicMembersOK with default headers values
func NewAdminUnbanTopicMembersOK() *AdminUnbanTopicMembersOK {
	return &AdminUnbanTopicMembersOK{}
}

/*AdminUnbanTopicMembersOK handles this case with default header values.

  OK
*/
type AdminUnbanTopicMembersOK struct {
	Payload *chatclientmodels.ModelsUnbanTopicMemberResult
}

func (o *AdminUnbanTopicMembersOK) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members][%d] adminUnbanTopicMembersOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUnbanTopicMembersOK) ToJSONString() string {
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

func (o *AdminUnbanTopicMembersOK) GetPayload() *chatclientmodels.ModelsUnbanTopicMemberResult {
	return o.Payload
}

func (o *AdminUnbanTopicMembersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsUnbanTopicMemberResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUnbanTopicMembersBadRequest creates a AdminUnbanTopicMembersBadRequest with default headers values
func NewAdminUnbanTopicMembersBadRequest() *AdminUnbanTopicMembersBadRequest {
	return &AdminUnbanTopicMembersBadRequest{}
}

/*AdminUnbanTopicMembersBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUnbanTopicMembersBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnbanTopicMembersBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members][%d] adminUnbanTopicMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUnbanTopicMembersBadRequest) ToJSONString() string {
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

func (o *AdminUnbanTopicMembersBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnbanTopicMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanTopicMembersUnauthorized creates a AdminUnbanTopicMembersUnauthorized with default headers values
func NewAdminUnbanTopicMembersUnauthorized() *AdminUnbanTopicMembersUnauthorized {
	return &AdminUnbanTopicMembersUnauthorized{}
}

/*AdminUnbanTopicMembersUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUnbanTopicMembersUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnbanTopicMembersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members][%d] adminUnbanTopicMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUnbanTopicMembersUnauthorized) ToJSONString() string {
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

func (o *AdminUnbanTopicMembersUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnbanTopicMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanTopicMembersForbidden creates a AdminUnbanTopicMembersForbidden with default headers values
func NewAdminUnbanTopicMembersForbidden() *AdminUnbanTopicMembersForbidden {
	return &AdminUnbanTopicMembersForbidden{}
}

/*AdminUnbanTopicMembersForbidden handles this case with default header values.

  Forbidden
*/
type AdminUnbanTopicMembersForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnbanTopicMembersForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members][%d] adminUnbanTopicMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUnbanTopicMembersForbidden) ToJSONString() string {
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

func (o *AdminUnbanTopicMembersForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnbanTopicMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanTopicMembersInternalServerError creates a AdminUnbanTopicMembersInternalServerError with default headers values
func NewAdminUnbanTopicMembersInternalServerError() *AdminUnbanTopicMembersInternalServerError {
	return &AdminUnbanTopicMembersInternalServerError{}
}

/*AdminUnbanTopicMembersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUnbanTopicMembersInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnbanTopicMembersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members][%d] adminUnbanTopicMembersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUnbanTopicMembersInternalServerError) ToJSONString() string {
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

func (o *AdminUnbanTopicMembersInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnbanTopicMembersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
