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

// AdminUpdateInboxCategoryReader is a Reader for the AdminUpdateInboxCategory structure.
type AdminUpdateInboxCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateInboxCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateInboxCategoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateInboxCategoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateInboxCategoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateInboxCategoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateInboxCategoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateInboxCategoryOK creates a AdminUpdateInboxCategoryOK with default headers values
func NewAdminUpdateInboxCategoryOK() *AdminUpdateInboxCategoryOK {
	return &AdminUpdateInboxCategoryOK{}
}

/*AdminUpdateInboxCategoryOK handles this case with default header values.

  OK
*/
type AdminUpdateInboxCategoryOK struct {
}

func (o *AdminUpdateInboxCategoryOK) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminUpdateInboxCategoryOK ", 200)
}

func (o *AdminUpdateInboxCategoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateInboxCategoryBadRequest creates a AdminUpdateInboxCategoryBadRequest with default headers values
func NewAdminUpdateInboxCategoryBadRequest() *AdminUpdateInboxCategoryBadRequest {
	return &AdminUpdateInboxCategoryBadRequest{}
}

/*AdminUpdateInboxCategoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateInboxCategoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxCategoryBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminUpdateInboxCategoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateInboxCategoryBadRequest) ToJSONString() string {
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

func (o *AdminUpdateInboxCategoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxCategoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInboxCategoryUnauthorized creates a AdminUpdateInboxCategoryUnauthorized with default headers values
func NewAdminUpdateInboxCategoryUnauthorized() *AdminUpdateInboxCategoryUnauthorized {
	return &AdminUpdateInboxCategoryUnauthorized{}
}

/*AdminUpdateInboxCategoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateInboxCategoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxCategoryUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminUpdateInboxCategoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateInboxCategoryUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateInboxCategoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxCategoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInboxCategoryForbidden creates a AdminUpdateInboxCategoryForbidden with default headers values
func NewAdminUpdateInboxCategoryForbidden() *AdminUpdateInboxCategoryForbidden {
	return &AdminUpdateInboxCategoryForbidden{}
}

/*AdminUpdateInboxCategoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateInboxCategoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxCategoryForbidden) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminUpdateInboxCategoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateInboxCategoryForbidden) ToJSONString() string {
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

func (o *AdminUpdateInboxCategoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxCategoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateInboxCategoryInternalServerError creates a AdminUpdateInboxCategoryInternalServerError with default headers values
func NewAdminUpdateInboxCategoryInternalServerError() *AdminUpdateInboxCategoryInternalServerError {
	return &AdminUpdateInboxCategoryInternalServerError{}
}

/*AdminUpdateInboxCategoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateInboxCategoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxCategoryInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}][%d] adminUpdateInboxCategoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateInboxCategoryInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateInboxCategoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxCategoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
