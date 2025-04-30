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

// AdminListKafkaTopicReader is a Reader for the AdminListKafkaTopic structure.
type AdminListKafkaTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListKafkaTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListKafkaTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListKafkaTopicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListKafkaTopicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListKafkaTopicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListKafkaTopicOK creates a AdminListKafkaTopicOK with default headers values
func NewAdminListKafkaTopicOK() *AdminListKafkaTopicOK {
	return &AdminListKafkaTopicOK{}
}

/*AdminListKafkaTopicOK handles this case with default header values.

  OK
*/
type AdminListKafkaTopicOK struct {
	Payload *chatclientmodels.ModelsGetListTopicKafkaResponse
}

func (o *AdminListKafkaTopicOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka][%d] adminListKafkaTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListKafkaTopicOK) ToJSONString() string {
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

func (o *AdminListKafkaTopicOK) GetPayload() *chatclientmodels.ModelsGetListTopicKafkaResponse {
	return o.Payload
}

func (o *AdminListKafkaTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsGetListTopicKafkaResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListKafkaTopicUnauthorized creates a AdminListKafkaTopicUnauthorized with default headers values
func NewAdminListKafkaTopicUnauthorized() *AdminListKafkaTopicUnauthorized {
	return &AdminListKafkaTopicUnauthorized{}
}

/*AdminListKafkaTopicUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListKafkaTopicUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminListKafkaTopicUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka][%d] adminListKafkaTopicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListKafkaTopicUnauthorized) ToJSONString() string {
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

func (o *AdminListKafkaTopicUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListKafkaTopicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListKafkaTopicForbidden creates a AdminListKafkaTopicForbidden with default headers values
func NewAdminListKafkaTopicForbidden() *AdminListKafkaTopicForbidden {
	return &AdminListKafkaTopicForbidden{}
}

/*AdminListKafkaTopicForbidden handles this case with default header values.

  Forbidden
*/
type AdminListKafkaTopicForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminListKafkaTopicForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka][%d] adminListKafkaTopicForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListKafkaTopicForbidden) ToJSONString() string {
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

func (o *AdminListKafkaTopicForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListKafkaTopicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListKafkaTopicInternalServerError creates a AdminListKafkaTopicInternalServerError with default headers values
func NewAdminListKafkaTopicInternalServerError() *AdminListKafkaTopicInternalServerError {
	return &AdminListKafkaTopicInternalServerError{}
}

/*AdminListKafkaTopicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListKafkaTopicInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminListKafkaTopicInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/list/topic/kafka][%d] adminListKafkaTopicInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListKafkaTopicInternalServerError) ToJSONString() string {
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

func (o *AdminListKafkaTopicInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListKafkaTopicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
