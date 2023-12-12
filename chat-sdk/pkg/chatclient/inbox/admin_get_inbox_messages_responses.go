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

// AdminGetInboxMessagesReader is a Reader for the AdminGetInboxMessages structure.
type AdminGetInboxMessagesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInboxMessagesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInboxMessagesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInboxMessagesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetInboxMessagesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetInboxMessagesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInboxMessagesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/messages returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInboxMessagesOK creates a AdminGetInboxMessagesOK with default headers values
func NewAdminGetInboxMessagesOK() *AdminGetInboxMessagesOK {
	return &AdminGetInboxMessagesOK{}
}

/*AdminGetInboxMessagesOK handles this case with default header values.

  OK
*/
type AdminGetInboxMessagesOK struct {
	Payload *chatclientmodels.ModelsGetInboxMessagesResponse
}

func (o *AdminGetInboxMessagesOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminGetInboxMessagesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInboxMessagesOK) ToJSONString() string {
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

func (o *AdminGetInboxMessagesOK) GetPayload() *chatclientmodels.ModelsGetInboxMessagesResponse {
	return o.Payload
}

func (o *AdminGetInboxMessagesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsGetInboxMessagesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInboxMessagesBadRequest creates a AdminGetInboxMessagesBadRequest with default headers values
func NewAdminGetInboxMessagesBadRequest() *AdminGetInboxMessagesBadRequest {
	return &AdminGetInboxMessagesBadRequest{}
}

/*AdminGetInboxMessagesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInboxMessagesBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxMessagesBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminGetInboxMessagesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInboxMessagesBadRequest) ToJSONString() string {
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

func (o *AdminGetInboxMessagesBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxMessagesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInboxMessagesUnauthorized creates a AdminGetInboxMessagesUnauthorized with default headers values
func NewAdminGetInboxMessagesUnauthorized() *AdminGetInboxMessagesUnauthorized {
	return &AdminGetInboxMessagesUnauthorized{}
}

/*AdminGetInboxMessagesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetInboxMessagesUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxMessagesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminGetInboxMessagesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetInboxMessagesUnauthorized) ToJSONString() string {
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

func (o *AdminGetInboxMessagesUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxMessagesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInboxMessagesForbidden creates a AdminGetInboxMessagesForbidden with default headers values
func NewAdminGetInboxMessagesForbidden() *AdminGetInboxMessagesForbidden {
	return &AdminGetInboxMessagesForbidden{}
}

/*AdminGetInboxMessagesForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetInboxMessagesForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxMessagesForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminGetInboxMessagesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetInboxMessagesForbidden) ToJSONString() string {
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

func (o *AdminGetInboxMessagesForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxMessagesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetInboxMessagesInternalServerError creates a AdminGetInboxMessagesInternalServerError with default headers values
func NewAdminGetInboxMessagesInternalServerError() *AdminGetInboxMessagesInternalServerError {
	return &AdminGetInboxMessagesInternalServerError{}
}

/*AdminGetInboxMessagesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInboxMessagesInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxMessagesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminGetInboxMessagesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInboxMessagesInternalServerError) ToJSONString() string {
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

func (o *AdminGetInboxMessagesInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxMessagesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
