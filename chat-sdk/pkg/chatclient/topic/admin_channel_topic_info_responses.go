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

// AdminChannelTopicInfoReader is a Reader for the AdminChannelTopicInfo structure.
type AdminChannelTopicInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChannelTopicInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChannelTopicInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminChannelTopicInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChannelTopicInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChannelTopicInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminChannelTopicInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChannelTopicInfoInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChannelTopicInfoOK creates a AdminChannelTopicInfoOK with default headers values
func NewAdminChannelTopicInfoOK() *AdminChannelTopicInfoOK {
	return &AdminChannelTopicInfoOK{}
}

/*AdminChannelTopicInfoOK handles this case with default header values.

  OK
*/
type AdminChannelTopicInfoOK struct {
	Payload *chatclientmodels.ModelsChannelTopicResponse
}

func (o *AdminChannelTopicInfoOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoOK  %+v", 200, o.ToJSONString())
}

func (o *AdminChannelTopicInfoOK) ToJSONString() string {
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

func (o *AdminChannelTopicInfoOK) GetPayload() *chatclientmodels.ModelsChannelTopicResponse {
	return o.Payload
}

func (o *AdminChannelTopicInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsChannelTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminChannelTopicInfoBadRequest creates a AdminChannelTopicInfoBadRequest with default headers values
func NewAdminChannelTopicInfoBadRequest() *AdminChannelTopicInfoBadRequest {
	return &AdminChannelTopicInfoBadRequest{}
}

/*AdminChannelTopicInfoBadRequest handles this case with default header values.

  Bad Request
*/
type AdminChannelTopicInfoBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminChannelTopicInfoBadRequest) ToJSONString() string {
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

func (o *AdminChannelTopicInfoBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicInfoUnauthorized creates a AdminChannelTopicInfoUnauthorized with default headers values
func NewAdminChannelTopicInfoUnauthorized() *AdminChannelTopicInfoUnauthorized {
	return &AdminChannelTopicInfoUnauthorized{}
}

/*AdminChannelTopicInfoUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminChannelTopicInfoUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChannelTopicInfoUnauthorized) ToJSONString() string {
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

func (o *AdminChannelTopicInfoUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicInfoForbidden creates a AdminChannelTopicInfoForbidden with default headers values
func NewAdminChannelTopicInfoForbidden() *AdminChannelTopicInfoForbidden {
	return &AdminChannelTopicInfoForbidden{}
}

/*AdminChannelTopicInfoForbidden handles this case with default header values.

  Forbidden
*/
type AdminChannelTopicInfoForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChannelTopicInfoForbidden) ToJSONString() string {
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

func (o *AdminChannelTopicInfoForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicInfoNotFound creates a AdminChannelTopicInfoNotFound with default headers values
func NewAdminChannelTopicInfoNotFound() *AdminChannelTopicInfoNotFound {
	return &AdminChannelTopicInfoNotFound{}
}

/*AdminChannelTopicInfoNotFound handles this case with default header values.

  Bad Request
*/
type AdminChannelTopicInfoNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminChannelTopicInfoNotFound) ToJSONString() string {
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

func (o *AdminChannelTopicInfoNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChannelTopicInfoInternalServerError creates a AdminChannelTopicInfoInternalServerError with default headers values
func NewAdminChannelTopicInfoInternalServerError() *AdminChannelTopicInfoInternalServerError {
	return &AdminChannelTopicInfoInternalServerError{}
}

/*AdminChannelTopicInfoInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminChannelTopicInfoInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChannelTopicInfoInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/channel][%d] adminChannelTopicInfoInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChannelTopicInfoInternalServerError) ToJSONString() string {
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

func (o *AdminChannelTopicInfoInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChannelTopicInfoInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
