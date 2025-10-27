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

// AdminUpdateTopicReader is a Reader for the AdminUpdateTopic structure.
type AdminUpdateTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateTopicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateTopicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateTopicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateTopicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /chat/admin/namespaces/{namespace}/topic/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateTopicOK creates a AdminUpdateTopicOK with default headers values
func NewAdminUpdateTopicOK() *AdminUpdateTopicOK {
	return &AdminUpdateTopicOK{}
}

/*AdminUpdateTopicOK handles this case with default header values.


 */
type AdminUpdateTopicOK struct {
	Payload *chatclientmodels.APICreateTopicResponse
}

func (o *AdminUpdateTopicOK) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateTopicOK) ToJSONString() string {
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

func (o *AdminUpdateTopicOK) GetPayload() *chatclientmodels.APICreateTopicResponse {
	return o.Payload
}

func (o *AdminUpdateTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.APICreateTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateTopicUnauthorized creates a AdminUpdateTopicUnauthorized with default headers values
func NewAdminUpdateTopicUnauthorized() *AdminUpdateTopicUnauthorized {
	return &AdminUpdateTopicUnauthorized{}
}

/*AdminUpdateTopicUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateTopicUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateTopicUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateTopicUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateTopicUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateTopicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTopicForbidden creates a AdminUpdateTopicForbidden with default headers values
func NewAdminUpdateTopicForbidden() *AdminUpdateTopicForbidden {
	return &AdminUpdateTopicForbidden{}
}

/*AdminUpdateTopicForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateTopicForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateTopicForbidden) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateTopicForbidden) ToJSONString() string {
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

func (o *AdminUpdateTopicForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateTopicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTopicNotFound creates a AdminUpdateTopicNotFound with default headers values
func NewAdminUpdateTopicNotFound() *AdminUpdateTopicNotFound {
	return &AdminUpdateTopicNotFound{}
}

/*AdminUpdateTopicNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateTopicNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateTopicNotFound) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateTopicNotFound) ToJSONString() string {
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

func (o *AdminUpdateTopicNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateTopicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTopicInternalServerError creates a AdminUpdateTopicInternalServerError with default headers values
func NewAdminUpdateTopicInternalServerError() *AdminUpdateTopicInternalServerError {
	return &AdminUpdateTopicInternalServerError{}
}

/*AdminUpdateTopicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateTopicInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateTopicInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateTopicInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateTopicInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateTopicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
