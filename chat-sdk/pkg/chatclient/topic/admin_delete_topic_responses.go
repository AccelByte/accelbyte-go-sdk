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

// AdminDeleteTopicReader is a Reader for the AdminDeleteTopic structure.
type AdminDeleteTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteTopicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteTopicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteTopicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteTopicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/admin/namespaces/{namespace}/topic/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteTopicOK creates a AdminDeleteTopicOK with default headers values
func NewAdminDeleteTopicOK() *AdminDeleteTopicOK {
	return &AdminDeleteTopicOK{}
}

/*AdminDeleteTopicOK handles this case with default header values.


 */
type AdminDeleteTopicOK struct {
	Payload *chatclientmodels.MessageActionDeleteTopicResult
}

func (o *AdminDeleteTopicOK) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminDeleteTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDeleteTopicOK) ToJSONString() string {
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

func (o *AdminDeleteTopicOK) GetPayload() *chatclientmodels.MessageActionDeleteTopicResult {
	return o.Payload
}

func (o *AdminDeleteTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.MessageActionDeleteTopicResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteTopicUnauthorized creates a AdminDeleteTopicUnauthorized with default headers values
func NewAdminDeleteTopicUnauthorized() *AdminDeleteTopicUnauthorized {
	return &AdminDeleteTopicUnauthorized{}
}

/*AdminDeleteTopicUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteTopicUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteTopicUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminDeleteTopicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteTopicUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteTopicUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteTopicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTopicForbidden creates a AdminDeleteTopicForbidden with default headers values
func NewAdminDeleteTopicForbidden() *AdminDeleteTopicForbidden {
	return &AdminDeleteTopicForbidden{}
}

/*AdminDeleteTopicForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteTopicForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteTopicForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminDeleteTopicForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteTopicForbidden) ToJSONString() string {
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

func (o *AdminDeleteTopicForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteTopicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTopicNotFound creates a AdminDeleteTopicNotFound with default headers values
func NewAdminDeleteTopicNotFound() *AdminDeleteTopicNotFound {
	return &AdminDeleteTopicNotFound{}
}

/*AdminDeleteTopicNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteTopicNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteTopicNotFound) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminDeleteTopicNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteTopicNotFound) ToJSONString() string {
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

func (o *AdminDeleteTopicNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteTopicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTopicInternalServerError creates a AdminDeleteTopicInternalServerError with default headers values
func NewAdminDeleteTopicInternalServerError() *AdminDeleteTopicInternalServerError {
	return &AdminDeleteTopicInternalServerError{}
}

/*AdminDeleteTopicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteTopicInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteTopicInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminDeleteTopicInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteTopicInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteTopicInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteTopicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
