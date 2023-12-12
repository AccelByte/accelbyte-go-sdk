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

// AdminChannelTopicSummaryReader is a Reader for the AdminChannelTopicSummary structure.
type AdminChannelTopicSummaryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChannelTopicSummaryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChannelTopicSummaryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminChannelTopicSummaryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChannelTopicSummaryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChannelTopicSummaryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChannelTopicSummaryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/channel/summary returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChannelTopicSummaryOK creates a AdminChannelTopicSummaryOK with default headers values
func NewAdminChannelTopicSummaryOK() *AdminChannelTopicSummaryOK {
	return &AdminChannelTopicSummaryOK{}
}

/*AdminChannelTopicSummaryOK handles this case with default header values.

  OK
*/
type AdminChannelTopicSummaryOK struct {
	Payload *chatclientmodels.ModelsChannelTopicSummaryResponse
}

func (o *AdminChannelTopicSummaryOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel/summary][%d] adminChannelTopicSummaryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminChannelTopicSummaryOK) ToJSONString() string {
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

func (o *AdminChannelTopicSummaryOK) GetPayload() *chatclientmodels.ModelsChannelTopicSummaryResponse {
	return o.Payload
}

func (o *AdminChannelTopicSummaryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsChannelTopicSummaryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminChannelTopicSummaryBadRequest creates a AdminChannelTopicSummaryBadRequest with default headers values
func NewAdminChannelTopicSummaryBadRequest() *AdminChannelTopicSummaryBadRequest {
	return &AdminChannelTopicSummaryBadRequest{}
}

/*AdminChannelTopicSummaryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminChannelTopicSummaryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicSummaryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel/summary][%d] adminChannelTopicSummaryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminChannelTopicSummaryBadRequest) ToJSONString() string {
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

func (o *AdminChannelTopicSummaryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicSummaryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChannelTopicSummaryUnauthorized creates a AdminChannelTopicSummaryUnauthorized with default headers values
func NewAdminChannelTopicSummaryUnauthorized() *AdminChannelTopicSummaryUnauthorized {
	return &AdminChannelTopicSummaryUnauthorized{}
}

/*AdminChannelTopicSummaryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminChannelTopicSummaryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicSummaryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel/summary][%d] adminChannelTopicSummaryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChannelTopicSummaryUnauthorized) ToJSONString() string {
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

func (o *AdminChannelTopicSummaryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicSummaryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChannelTopicSummaryForbidden creates a AdminChannelTopicSummaryForbidden with default headers values
func NewAdminChannelTopicSummaryForbidden() *AdminChannelTopicSummaryForbidden {
	return &AdminChannelTopicSummaryForbidden{}
}

/*AdminChannelTopicSummaryForbidden handles this case with default header values.

  Forbidden
*/
type AdminChannelTopicSummaryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicSummaryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel/summary][%d] adminChannelTopicSummaryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChannelTopicSummaryForbidden) ToJSONString() string {
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

func (o *AdminChannelTopicSummaryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicSummaryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChannelTopicSummaryInternalServerError creates a AdminChannelTopicSummaryInternalServerError with default headers values
func NewAdminChannelTopicSummaryInternalServerError() *AdminChannelTopicSummaryInternalServerError {
	return &AdminChannelTopicSummaryInternalServerError{}
}

/*AdminChannelTopicSummaryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminChannelTopicSummaryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicSummaryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel/summary][%d] adminChannelTopicSummaryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChannelTopicSummaryInternalServerError) ToJSONString() string {
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

func (o *AdminChannelTopicSummaryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicSummaryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
