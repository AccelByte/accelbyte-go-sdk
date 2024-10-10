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

// AdminChannelTopicListReader is a Reader for the AdminChannelTopicList structure.
type AdminChannelTopicListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChannelTopicListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChannelTopicListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminChannelTopicListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChannelTopicListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChannelTopicListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChannelTopicListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/channel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChannelTopicListOK creates a AdminChannelTopicListOK with default headers values
func NewAdminChannelTopicListOK() *AdminChannelTopicListOK {
	return &AdminChannelTopicListOK{}
}

/*AdminChannelTopicListOK handles this case with default header values.

  OK
*/
type AdminChannelTopicListOK struct {
	Payload *chatclientmodels.ModelsChannelTopicWithPaginationResponse
}

func (o *AdminChannelTopicListOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel][%d] adminChannelTopicListOK  %+v", 200, o.ToJSONString())
}

func (o *AdminChannelTopicListOK) ToJSONString() string {
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

func (o *AdminChannelTopicListOK) GetPayload() *chatclientmodels.ModelsChannelTopicWithPaginationResponse {
	return o.Payload
}

func (o *AdminChannelTopicListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsChannelTopicWithPaginationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminChannelTopicListBadRequest creates a AdminChannelTopicListBadRequest with default headers values
func NewAdminChannelTopicListBadRequest() *AdminChannelTopicListBadRequest {
	return &AdminChannelTopicListBadRequest{}
}

/*AdminChannelTopicListBadRequest handles this case with default header values.

  Bad Request
*/
type AdminChannelTopicListBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicListBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel][%d] adminChannelTopicListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminChannelTopicListBadRequest) ToJSONString() string {
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

func (o *AdminChannelTopicListBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicListUnauthorized creates a AdminChannelTopicListUnauthorized with default headers values
func NewAdminChannelTopicListUnauthorized() *AdminChannelTopicListUnauthorized {
	return &AdminChannelTopicListUnauthorized{}
}

/*AdminChannelTopicListUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminChannelTopicListUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel][%d] adminChannelTopicListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChannelTopicListUnauthorized) ToJSONString() string {
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

func (o *AdminChannelTopicListUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicListForbidden creates a AdminChannelTopicListForbidden with default headers values
func NewAdminChannelTopicListForbidden() *AdminChannelTopicListForbidden {
	return &AdminChannelTopicListForbidden{}
}

/*AdminChannelTopicListForbidden handles this case with default header values.

  Forbidden
*/
type AdminChannelTopicListForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicListForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel][%d] adminChannelTopicListForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChannelTopicListForbidden) ToJSONString() string {
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

func (o *AdminChannelTopicListForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicListInternalServerError creates a AdminChannelTopicListInternalServerError with default headers values
func NewAdminChannelTopicListInternalServerError() *AdminChannelTopicListInternalServerError {
	return &AdminChannelTopicListInternalServerError{}
}

/*AdminChannelTopicListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminChannelTopicListInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/channel][%d] adminChannelTopicListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChannelTopicListInternalServerError) ToJSONString() string {
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

func (o *AdminChannelTopicListInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
