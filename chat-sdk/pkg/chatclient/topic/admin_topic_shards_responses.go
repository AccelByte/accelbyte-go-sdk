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

// AdminTopicShardsReader is a Reader for the AdminTopicShards structure.
type AdminTopicShardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminTopicShardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminTopicShardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminTopicShardsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminTopicShardsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminTopicShardsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminTopicShardsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminTopicShardsOK creates a AdminTopicShardsOK with default headers values
func NewAdminTopicShardsOK() *AdminTopicShardsOK {
	return &AdminTopicShardsOK{}
}

/*AdminTopicShardsOK handles this case with default header values.

  OK
*/
type AdminTopicShardsOK struct {
	Payload []string
}

func (o *AdminTopicShardsOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards][%d] adminTopicShardsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminTopicShardsOK) ToJSONString() string {
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

func (o *AdminTopicShardsOK) GetPayload() []string {
	return o.Payload
}

func (o *AdminTopicShardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTopicShardsBadRequest creates a AdminTopicShardsBadRequest with default headers values
func NewAdminTopicShardsBadRequest() *AdminTopicShardsBadRequest {
	return &AdminTopicShardsBadRequest{}
}

/*AdminTopicShardsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminTopicShardsBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicShardsBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards][%d] adminTopicShardsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminTopicShardsBadRequest) ToJSONString() string {
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

func (o *AdminTopicShardsBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicShardsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicShardsUnauthorized creates a AdminTopicShardsUnauthorized with default headers values
func NewAdminTopicShardsUnauthorized() *AdminTopicShardsUnauthorized {
	return &AdminTopicShardsUnauthorized{}
}

/*AdminTopicShardsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminTopicShardsUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicShardsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards][%d] adminTopicShardsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminTopicShardsUnauthorized) ToJSONString() string {
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

func (o *AdminTopicShardsUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicShardsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicShardsForbidden creates a AdminTopicShardsForbidden with default headers values
func NewAdminTopicShardsForbidden() *AdminTopicShardsForbidden {
	return &AdminTopicShardsForbidden{}
}

/*AdminTopicShardsForbidden handles this case with default header values.

  Forbidden
*/
type AdminTopicShardsForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicShardsForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards][%d] adminTopicShardsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminTopicShardsForbidden) ToJSONString() string {
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

func (o *AdminTopicShardsForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicShardsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicShardsInternalServerError creates a AdminTopicShardsInternalServerError with default headers values
func NewAdminTopicShardsInternalServerError() *AdminTopicShardsInternalServerError {
	return &AdminTopicShardsInternalServerError{}
}

/*AdminTopicShardsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminTopicShardsInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicShardsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/shards][%d] adminTopicShardsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminTopicShardsInternalServerError) ToJSONString() string {
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

func (o *AdminTopicShardsInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicShardsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
