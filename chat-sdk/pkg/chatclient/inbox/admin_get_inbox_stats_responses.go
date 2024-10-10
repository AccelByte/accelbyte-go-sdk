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

// AdminGetInboxStatsReader is a Reader for the AdminGetInboxStats structure.
type AdminGetInboxStatsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInboxStatsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInboxStatsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInboxStatsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetInboxStatsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetInboxStatsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInboxStatsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInboxStatsOK creates a AdminGetInboxStatsOK with default headers values
func NewAdminGetInboxStatsOK() *AdminGetInboxStatsOK {
	return &AdminGetInboxStatsOK{}
}

/*AdminGetInboxStatsOK handles this case with default header values.

  OK
*/
type AdminGetInboxStatsOK struct {
	Payload *chatclientmodels.ModelsGetInboxStatsResponse
}

func (o *AdminGetInboxStatsOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/stats][%d] adminGetInboxStatsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInboxStatsOK) ToJSONString() string {
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

func (o *AdminGetInboxStatsOK) GetPayload() *chatclientmodels.ModelsGetInboxStatsResponse {
	return o.Payload
}

func (o *AdminGetInboxStatsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsGetInboxStatsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetInboxStatsBadRequest creates a AdminGetInboxStatsBadRequest with default headers values
func NewAdminGetInboxStatsBadRequest() *AdminGetInboxStatsBadRequest {
	return &AdminGetInboxStatsBadRequest{}
}

/*AdminGetInboxStatsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInboxStatsBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxStatsBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/stats][%d] adminGetInboxStatsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInboxStatsBadRequest) ToJSONString() string {
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

func (o *AdminGetInboxStatsBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxStatsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxStatsUnauthorized creates a AdminGetInboxStatsUnauthorized with default headers values
func NewAdminGetInboxStatsUnauthorized() *AdminGetInboxStatsUnauthorized {
	return &AdminGetInboxStatsUnauthorized{}
}

/*AdminGetInboxStatsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetInboxStatsUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxStatsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/stats][%d] adminGetInboxStatsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetInboxStatsUnauthorized) ToJSONString() string {
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

func (o *AdminGetInboxStatsUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxStatsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxStatsForbidden creates a AdminGetInboxStatsForbidden with default headers values
func NewAdminGetInboxStatsForbidden() *AdminGetInboxStatsForbidden {
	return &AdminGetInboxStatsForbidden{}
}

/*AdminGetInboxStatsForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetInboxStatsForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxStatsForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/stats][%d] adminGetInboxStatsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetInboxStatsForbidden) ToJSONString() string {
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

func (o *AdminGetInboxStatsForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxStatsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxStatsInternalServerError creates a AdminGetInboxStatsInternalServerError with default headers values
func NewAdminGetInboxStatsInternalServerError() *AdminGetInboxStatsInternalServerError {
	return &AdminGetInboxStatsInternalServerError{}
}

/*AdminGetInboxStatsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInboxStatsInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxStatsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/stats][%d] adminGetInboxStatsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInboxStatsInternalServerError) ToJSONString() string {
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

func (o *AdminGetInboxStatsInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxStatsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
