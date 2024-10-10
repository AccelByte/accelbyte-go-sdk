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

// AdminDeleteInboxCategoryReader is a Reader for the AdminDeleteInboxCategory structure.
type AdminDeleteInboxCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteInboxCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteInboxCategoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteInboxCategoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteInboxCategoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteInboxCategoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteInboxCategoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteInboxCategoryOK creates a AdminDeleteInboxCategoryOK with default headers values
func NewAdminDeleteInboxCategoryOK() *AdminDeleteInboxCategoryOK {
	return &AdminDeleteInboxCategoryOK{}
}

/*AdminDeleteInboxCategoryOK handles this case with default header values.

  OK
*/
type AdminDeleteInboxCategoryOK struct {
}

func (o *AdminDeleteInboxCategoryOK) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminDeleteInboxCategoryOK ", 200)
}

func (o *AdminDeleteInboxCategoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteInboxCategoryBadRequest creates a AdminDeleteInboxCategoryBadRequest with default headers values
func NewAdminDeleteInboxCategoryBadRequest() *AdminDeleteInboxCategoryBadRequest {
	return &AdminDeleteInboxCategoryBadRequest{}
}

/*AdminDeleteInboxCategoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteInboxCategoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxCategoryBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminDeleteInboxCategoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteInboxCategoryBadRequest) ToJSONString() string {
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

func (o *AdminDeleteInboxCategoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxCategoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxCategoryUnauthorized creates a AdminDeleteInboxCategoryUnauthorized with default headers values
func NewAdminDeleteInboxCategoryUnauthorized() *AdminDeleteInboxCategoryUnauthorized {
	return &AdminDeleteInboxCategoryUnauthorized{}
}

/*AdminDeleteInboxCategoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteInboxCategoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxCategoryUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminDeleteInboxCategoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteInboxCategoryUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteInboxCategoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxCategoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxCategoryForbidden creates a AdminDeleteInboxCategoryForbidden with default headers values
func NewAdminDeleteInboxCategoryForbidden() *AdminDeleteInboxCategoryForbidden {
	return &AdminDeleteInboxCategoryForbidden{}
}

/*AdminDeleteInboxCategoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteInboxCategoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxCategoryForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminDeleteInboxCategoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteInboxCategoryForbidden) ToJSONString() string {
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

func (o *AdminDeleteInboxCategoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxCategoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxCategoryInternalServerError creates a AdminDeleteInboxCategoryInternalServerError with default headers values
func NewAdminDeleteInboxCategoryInternalServerError() *AdminDeleteInboxCategoryInternalServerError {
	return &AdminDeleteInboxCategoryInternalServerError{}
}

/*AdminDeleteInboxCategoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteInboxCategoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxCategoryInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminDeleteInboxCategoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteInboxCategoryInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteInboxCategoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxCategoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
