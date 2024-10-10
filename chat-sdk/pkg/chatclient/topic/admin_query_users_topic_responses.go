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

// AdminQueryUsersTopicReader is a Reader for the AdminQueryUsersTopic structure.
type AdminQueryUsersTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryUsersTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryUsersTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryUsersTopicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryUsersTopicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryUsersTopicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryUsersTopicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/users/{userId}/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryUsersTopicOK creates a AdminQueryUsersTopicOK with default headers values
func NewAdminQueryUsersTopicOK() *AdminQueryUsersTopicOK {
	return &AdminQueryUsersTopicOK{}
}

/*AdminQueryUsersTopicOK handles this case with default header values.

  OK
*/
type AdminQueryUsersTopicOK struct {
	Payload *chatclientmodels.ModelsTopicLogWithPaginationResponse
}

func (o *AdminQueryUsersTopicOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/users/{userId}/topics][%d] adminQueryUsersTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryUsersTopicOK) ToJSONString() string {
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

func (o *AdminQueryUsersTopicOK) GetPayload() *chatclientmodels.ModelsTopicLogWithPaginationResponse {
	return o.Payload
}

func (o *AdminQueryUsersTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsTopicLogWithPaginationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryUsersTopicBadRequest creates a AdminQueryUsersTopicBadRequest with default headers values
func NewAdminQueryUsersTopicBadRequest() *AdminQueryUsersTopicBadRequest {
	return &AdminQueryUsersTopicBadRequest{}
}

/*AdminQueryUsersTopicBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryUsersTopicBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryUsersTopicBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/users/{userId}/topics][%d] adminQueryUsersTopicBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryUsersTopicBadRequest) ToJSONString() string {
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

func (o *AdminQueryUsersTopicBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryUsersTopicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryUsersTopicUnauthorized creates a AdminQueryUsersTopicUnauthorized with default headers values
func NewAdminQueryUsersTopicUnauthorized() *AdminQueryUsersTopicUnauthorized {
	return &AdminQueryUsersTopicUnauthorized{}
}

/*AdminQueryUsersTopicUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryUsersTopicUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryUsersTopicUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/users/{userId}/topics][%d] adminQueryUsersTopicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryUsersTopicUnauthorized) ToJSONString() string {
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

func (o *AdminQueryUsersTopicUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryUsersTopicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryUsersTopicForbidden creates a AdminQueryUsersTopicForbidden with default headers values
func NewAdminQueryUsersTopicForbidden() *AdminQueryUsersTopicForbidden {
	return &AdminQueryUsersTopicForbidden{}
}

/*AdminQueryUsersTopicForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryUsersTopicForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryUsersTopicForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/users/{userId}/topics][%d] adminQueryUsersTopicForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryUsersTopicForbidden) ToJSONString() string {
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

func (o *AdminQueryUsersTopicForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryUsersTopicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryUsersTopicInternalServerError creates a AdminQueryUsersTopicInternalServerError with default headers values
func NewAdminQueryUsersTopicInternalServerError() *AdminQueryUsersTopicInternalServerError {
	return &AdminQueryUsersTopicInternalServerError{}
}

/*AdminQueryUsersTopicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryUsersTopicInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryUsersTopicInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/users/{userId}/topics][%d] adminQueryUsersTopicInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryUsersTopicInternalServerError) ToJSONString() string {
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

func (o *AdminQueryUsersTopicInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryUsersTopicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
