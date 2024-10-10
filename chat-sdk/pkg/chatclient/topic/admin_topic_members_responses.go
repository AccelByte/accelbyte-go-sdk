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

// AdminTopicMembersReader is a Reader for the AdminTopicMembers structure.
type AdminTopicMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminTopicMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminTopicMembersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminTopicMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminTopicMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminTopicMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminTopicMembersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/{topic}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminTopicMembersOK creates a AdminTopicMembersOK with default headers values
func NewAdminTopicMembersOK() *AdminTopicMembersOK {
	return &AdminTopicMembersOK{}
}

/*AdminTopicMembersOK handles this case with default header values.

  OK
*/
type AdminTopicMembersOK struct {
	Payload *chatclientmodels.ModelsTopicMemberWithPaginationResponse
}

func (o *AdminTopicMembersOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/members][%d] adminTopicMembersOK  %+v", 200, o.ToJSONString())
}

func (o *AdminTopicMembersOK) ToJSONString() string {
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

func (o *AdminTopicMembersOK) GetPayload() *chatclientmodels.ModelsTopicMemberWithPaginationResponse {
	return o.Payload
}

func (o *AdminTopicMembersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsTopicMemberWithPaginationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTopicMembersBadRequest creates a AdminTopicMembersBadRequest with default headers values
func NewAdminTopicMembersBadRequest() *AdminTopicMembersBadRequest {
	return &AdminTopicMembersBadRequest{}
}

/*AdminTopicMembersBadRequest handles this case with default header values.

  Bad Request
*/
type AdminTopicMembersBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicMembersBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/members][%d] adminTopicMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminTopicMembersBadRequest) ToJSONString() string {
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

func (o *AdminTopicMembersBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminTopicMembersUnauthorized creates a AdminTopicMembersUnauthorized with default headers values
func NewAdminTopicMembersUnauthorized() *AdminTopicMembersUnauthorized {
	return &AdminTopicMembersUnauthorized{}
}

/*AdminTopicMembersUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminTopicMembersUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicMembersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/members][%d] adminTopicMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminTopicMembersUnauthorized) ToJSONString() string {
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

func (o *AdminTopicMembersUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminTopicMembersForbidden creates a AdminTopicMembersForbidden with default headers values
func NewAdminTopicMembersForbidden() *AdminTopicMembersForbidden {
	return &AdminTopicMembersForbidden{}
}

/*AdminTopicMembersForbidden handles this case with default header values.

  Forbidden
*/
type AdminTopicMembersForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicMembersForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/members][%d] adminTopicMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminTopicMembersForbidden) ToJSONString() string {
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

func (o *AdminTopicMembersForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminTopicMembersInternalServerError creates a AdminTopicMembersInternalServerError with default headers values
func NewAdminTopicMembersInternalServerError() *AdminTopicMembersInternalServerError {
	return &AdminTopicMembersInternalServerError{}
}

/*AdminTopicMembersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminTopicMembersInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicMembersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/members][%d] adminTopicMembersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminTopicMembersInternalServerError) ToJSONString() string {
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

func (o *AdminTopicMembersInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicMembersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
