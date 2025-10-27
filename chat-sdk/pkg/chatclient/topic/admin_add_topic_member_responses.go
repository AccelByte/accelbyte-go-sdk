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

// AdminAddTopicMemberReader is a Reader for the AdminAddTopicMember structure.
type AdminAddTopicMemberReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddTopicMemberReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminAddTopicMemberOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddTopicMemberBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddTopicMemberUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddTopicMemberForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddTopicMemberNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddTopicMemberInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddTopicMemberOK creates a AdminAddTopicMemberOK with default headers values
func NewAdminAddTopicMemberOK() *AdminAddTopicMemberOK {
	return &AdminAddTopicMemberOK{}
}

/*AdminAddTopicMemberOK handles this case with default header values.


 */
type AdminAddTopicMemberOK struct {
	Payload *chatclientmodels.MessageActionAddUserToTopicResult
}

func (o *AdminAddTopicMemberOK) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberOK  %+v", 200, o.ToJSONString())
}

func (o *AdminAddTopicMemberOK) ToJSONString() string {
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

func (o *AdminAddTopicMemberOK) GetPayload() *chatclientmodels.MessageActionAddUserToTopicResult {
	return o.Payload
}

func (o *AdminAddTopicMemberOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddTopicMemberBadRequest creates a AdminAddTopicMemberBadRequest with default headers values
func NewAdminAddTopicMemberBadRequest() *AdminAddTopicMemberBadRequest {
	return &AdminAddTopicMemberBadRequest{}
}

/*AdminAddTopicMemberBadRequest handles this case with default header values.

  Bad Request
*/
type AdminAddTopicMemberBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddTopicMemberBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddTopicMemberBadRequest) ToJSONString() string {
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

func (o *AdminAddTopicMemberBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddTopicMemberBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddTopicMemberUnauthorized creates a AdminAddTopicMemberUnauthorized with default headers values
func NewAdminAddTopicMemberUnauthorized() *AdminAddTopicMemberUnauthorized {
	return &AdminAddTopicMemberUnauthorized{}
}

/*AdminAddTopicMemberUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminAddTopicMemberUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddTopicMemberUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddTopicMemberUnauthorized) ToJSONString() string {
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

func (o *AdminAddTopicMemberUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddTopicMemberUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddTopicMemberForbidden creates a AdminAddTopicMemberForbidden with default headers values
func NewAdminAddTopicMemberForbidden() *AdminAddTopicMemberForbidden {
	return &AdminAddTopicMemberForbidden{}
}

/*AdminAddTopicMemberForbidden handles this case with default header values.

  Forbidden
*/
type AdminAddTopicMemberForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddTopicMemberForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddTopicMemberForbidden) ToJSONString() string {
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

func (o *AdminAddTopicMemberForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddTopicMemberForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddTopicMemberNotFound creates a AdminAddTopicMemberNotFound with default headers values
func NewAdminAddTopicMemberNotFound() *AdminAddTopicMemberNotFound {
	return &AdminAddTopicMemberNotFound{}
}

/*AdminAddTopicMemberNotFound handles this case with default header values.

  Not Found
*/
type AdminAddTopicMemberNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddTopicMemberNotFound) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddTopicMemberNotFound) ToJSONString() string {
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

func (o *AdminAddTopicMemberNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddTopicMemberNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddTopicMemberInternalServerError creates a AdminAddTopicMemberInternalServerError with default headers values
func NewAdminAddTopicMemberInternalServerError() *AdminAddTopicMemberInternalServerError {
	return &AdminAddTopicMemberInternalServerError{}
}

/*AdminAddTopicMemberInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminAddTopicMemberInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddTopicMemberInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}][%d] adminAddTopicMemberInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddTopicMemberInternalServerError) ToJSONString() string {
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

func (o *AdminAddTopicMemberInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddTopicMemberInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
