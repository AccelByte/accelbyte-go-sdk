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

// AdminRemoveTopicMemberReader is a Reader for the AdminRemoveTopicMember structure.
type AdminRemoveTopicMemberReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRemoveTopicMemberReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRemoveTopicMemberOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRemoveTopicMemberUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRemoveTopicMemberForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRemoveTopicMemberNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRemoveTopicMemberInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRemoveTopicMemberOK creates a AdminRemoveTopicMemberOK with default headers values
func NewAdminRemoveTopicMemberOK() *AdminRemoveTopicMemberOK {
	return &AdminRemoveTopicMemberOK{}
}

/*AdminRemoveTopicMemberOK handles this case with default header values.


 */
type AdminRemoveTopicMemberOK struct {
	Payload *chatclientmodels.MessageActionAddUserToTopicResult
}

func (o *AdminRemoveTopicMemberOK) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminRemoveTopicMemberOK  %+v", 200, o.ToJSONString())
}

func (o *AdminRemoveTopicMemberOK) ToJSONString() string {
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

func (o *AdminRemoveTopicMemberOK) GetPayload() *chatclientmodels.MessageActionAddUserToTopicResult {
	return o.Payload
}

func (o *AdminRemoveTopicMemberOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.MessageActionAddUserToTopicResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRemoveTopicMemberUnauthorized creates a AdminRemoveTopicMemberUnauthorized with default headers values
func NewAdminRemoveTopicMemberUnauthorized() *AdminRemoveTopicMemberUnauthorized {
	return &AdminRemoveTopicMemberUnauthorized{}
}

/*AdminRemoveTopicMemberUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminRemoveTopicMemberUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminRemoveTopicMemberUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminRemoveTopicMemberUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRemoveTopicMemberUnauthorized) ToJSONString() string {
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

func (o *AdminRemoveTopicMemberUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminRemoveTopicMemberUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveTopicMemberForbidden creates a AdminRemoveTopicMemberForbidden with default headers values
func NewAdminRemoveTopicMemberForbidden() *AdminRemoveTopicMemberForbidden {
	return &AdminRemoveTopicMemberForbidden{}
}

/*AdminRemoveTopicMemberForbidden handles this case with default header values.

  Forbidden
*/
type AdminRemoveTopicMemberForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminRemoveTopicMemberForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminRemoveTopicMemberForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRemoveTopicMemberForbidden) ToJSONString() string {
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

func (o *AdminRemoveTopicMemberForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminRemoveTopicMemberForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveTopicMemberNotFound creates a AdminRemoveTopicMemberNotFound with default headers values
func NewAdminRemoveTopicMemberNotFound() *AdminRemoveTopicMemberNotFound {
	return &AdminRemoveTopicMemberNotFound{}
}

/*AdminRemoveTopicMemberNotFound handles this case with default header values.

  Not Found
*/
type AdminRemoveTopicMemberNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminRemoveTopicMemberNotFound) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminRemoveTopicMemberNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRemoveTopicMemberNotFound) ToJSONString() string {
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

func (o *AdminRemoveTopicMemberNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminRemoveTopicMemberNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveTopicMemberInternalServerError creates a AdminRemoveTopicMemberInternalServerError with default headers values
func NewAdminRemoveTopicMemberInternalServerError() *AdminRemoveTopicMemberInternalServerError {
	return &AdminRemoveTopicMemberInternalServerError{}
}

/*AdminRemoveTopicMemberInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminRemoveTopicMemberInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminRemoveTopicMemberInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminRemoveTopicMemberInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRemoveTopicMemberInternalServerError) ToJSONString() string {
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

func (o *AdminRemoveTopicMemberInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminRemoveTopicMemberInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
