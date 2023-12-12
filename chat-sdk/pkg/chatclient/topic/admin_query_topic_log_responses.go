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

// AdminQueryTopicLogReader is a Reader for the AdminQueryTopicLog structure.
type AdminQueryTopicLogReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryTopicLogReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryTopicLogOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryTopicLogBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryTopicLogUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryTopicLogForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryTopicLogInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/log returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryTopicLogOK creates a AdminQueryTopicLogOK with default headers values
func NewAdminQueryTopicLogOK() *AdminQueryTopicLogOK {
	return &AdminQueryTopicLogOK{}
}

/*AdminQueryTopicLogOK handles this case with default header values.

  OK
*/
type AdminQueryTopicLogOK struct {
	Payload *chatclientmodels.ModelsTopicLogWithPaginationResponse
}

func (o *AdminQueryTopicLogOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/log][%d] adminQueryTopicLogOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryTopicLogOK) ToJSONString() string {
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

func (o *AdminQueryTopicLogOK) GetPayload() *chatclientmodels.ModelsTopicLogWithPaginationResponse {
	return o.Payload
}

func (o *AdminQueryTopicLogOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsTopicLogWithPaginationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryTopicLogBadRequest creates a AdminQueryTopicLogBadRequest with default headers values
func NewAdminQueryTopicLogBadRequest() *AdminQueryTopicLogBadRequest {
	return &AdminQueryTopicLogBadRequest{}
}

/*AdminQueryTopicLogBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryTopicLogBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryTopicLogBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/log][%d] adminQueryTopicLogBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryTopicLogBadRequest) ToJSONString() string {
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

func (o *AdminQueryTopicLogBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryTopicLogBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTopicLogUnauthorized creates a AdminQueryTopicLogUnauthorized with default headers values
func NewAdminQueryTopicLogUnauthorized() *AdminQueryTopicLogUnauthorized {
	return &AdminQueryTopicLogUnauthorized{}
}

/*AdminQueryTopicLogUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryTopicLogUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryTopicLogUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/log][%d] adminQueryTopicLogUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryTopicLogUnauthorized) ToJSONString() string {
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

func (o *AdminQueryTopicLogUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryTopicLogUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTopicLogForbidden creates a AdminQueryTopicLogForbidden with default headers values
func NewAdminQueryTopicLogForbidden() *AdminQueryTopicLogForbidden {
	return &AdminQueryTopicLogForbidden{}
}

/*AdminQueryTopicLogForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryTopicLogForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryTopicLogForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/log][%d] adminQueryTopicLogForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryTopicLogForbidden) ToJSONString() string {
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

func (o *AdminQueryTopicLogForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryTopicLogForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTopicLogInternalServerError creates a AdminQueryTopicLogInternalServerError with default headers values
func NewAdminQueryTopicLogInternalServerError() *AdminQueryTopicLogInternalServerError {
	return &AdminQueryTopicLogInternalServerError{}
}

/*AdminQueryTopicLogInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryTopicLogInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminQueryTopicLogInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/log][%d] adminQueryTopicLogInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryTopicLogInternalServerError) ToJSONString() string {
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

func (o *AdminQueryTopicLogInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminQueryTopicLogInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
