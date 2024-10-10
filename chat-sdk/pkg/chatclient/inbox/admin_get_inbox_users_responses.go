// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

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

// AdminGetInboxUsersReader is a Reader for the AdminGetInboxUsers structure.
type AdminGetInboxUsersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInboxUsersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInboxUsersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInboxUsersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetInboxUsersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetInboxUsersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInboxUsersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInboxUsersOK creates a AdminGetInboxUsersOK with default headers values
func NewAdminGetInboxUsersOK() *AdminGetInboxUsersOK {
	return &AdminGetInboxUsersOK{}
}

/*AdminGetInboxUsersOK handles this case with default header values.

  OK
*/
type AdminGetInboxUsersOK struct {
	Payload *chatclientmodels.ModelsGetInboxUsersResponse
}

func (o *AdminGetInboxUsersOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users][%d] adminGetInboxUsersOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInboxUsersOK) ToJSONString() string {
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

func (o *AdminGetInboxUsersOK) GetPayload() *chatclientmodels.ModelsGetInboxUsersResponse {
	return o.Payload
}

func (o *AdminGetInboxUsersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsGetInboxUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInboxUsersBadRequest creates a AdminGetInboxUsersBadRequest with default headers values
func NewAdminGetInboxUsersBadRequest() *AdminGetInboxUsersBadRequest {
	return &AdminGetInboxUsersBadRequest{}
}

/*AdminGetInboxUsersBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInboxUsersBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxUsersBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users][%d] adminGetInboxUsersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInboxUsersBadRequest) ToJSONString() string {
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

func (o *AdminGetInboxUsersBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxUsersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxUsersUnauthorized creates a AdminGetInboxUsersUnauthorized with default headers values
func NewAdminGetInboxUsersUnauthorized() *AdminGetInboxUsersUnauthorized {
	return &AdminGetInboxUsersUnauthorized{}
}

/*AdminGetInboxUsersUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetInboxUsersUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxUsersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users][%d] adminGetInboxUsersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetInboxUsersUnauthorized) ToJSONString() string {
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

func (o *AdminGetInboxUsersUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxUsersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxUsersForbidden creates a AdminGetInboxUsersForbidden with default headers values
func NewAdminGetInboxUsersForbidden() *AdminGetInboxUsersForbidden {
	return &AdminGetInboxUsersForbidden{}
}

/*AdminGetInboxUsersForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetInboxUsersForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxUsersForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users][%d] adminGetInboxUsersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetInboxUsersForbidden) ToJSONString() string {
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

func (o *AdminGetInboxUsersForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxUsersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxUsersInternalServerError creates a AdminGetInboxUsersInternalServerError with default headers values
func NewAdminGetInboxUsersInternalServerError() *AdminGetInboxUsersInternalServerError {
	return &AdminGetInboxUsersInternalServerError{}
}

/*AdminGetInboxUsersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInboxUsersInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxUsersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users][%d] adminGetInboxUsersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInboxUsersInternalServerError) ToJSONString() string {
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

func (o *AdminGetInboxUsersInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxUsersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
