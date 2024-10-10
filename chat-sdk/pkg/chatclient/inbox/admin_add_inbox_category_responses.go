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

// AdminAddInboxCategoryReader is a Reader for the AdminAddInboxCategory structure.
type AdminAddInboxCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddInboxCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminAddInboxCategoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddInboxCategoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddInboxCategoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddInboxCategoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddInboxCategoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/inbox/namespaces/{namespace}/categories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddInboxCategoryOK creates a AdminAddInboxCategoryOK with default headers values
func NewAdminAddInboxCategoryOK() *AdminAddInboxCategoryOK {
	return &AdminAddInboxCategoryOK{}
}

/*AdminAddInboxCategoryOK handles this case with default header values.

  OK
*/
type AdminAddInboxCategoryOK struct {
	Payload *chatclientmodels.ModelsAddInboxCategoryResponse
}

func (o *AdminAddInboxCategoryOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminAddInboxCategoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminAddInboxCategoryOK) ToJSONString() string {
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

func (o *AdminAddInboxCategoryOK) GetPayload() *chatclientmodels.ModelsAddInboxCategoryResponse {
	return o.Payload
}

func (o *AdminAddInboxCategoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsAddInboxCategoryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAddInboxCategoryBadRequest creates a AdminAddInboxCategoryBadRequest with default headers values
func NewAdminAddInboxCategoryBadRequest() *AdminAddInboxCategoryBadRequest {
	return &AdminAddInboxCategoryBadRequest{}
}

/*AdminAddInboxCategoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminAddInboxCategoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddInboxCategoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminAddInboxCategoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddInboxCategoryBadRequest) ToJSONString() string {
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

func (o *AdminAddInboxCategoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddInboxCategoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddInboxCategoryUnauthorized creates a AdminAddInboxCategoryUnauthorized with default headers values
func NewAdminAddInboxCategoryUnauthorized() *AdminAddInboxCategoryUnauthorized {
	return &AdminAddInboxCategoryUnauthorized{}
}

/*AdminAddInboxCategoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminAddInboxCategoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddInboxCategoryUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminAddInboxCategoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddInboxCategoryUnauthorized) ToJSONString() string {
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

func (o *AdminAddInboxCategoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddInboxCategoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddInboxCategoryForbidden creates a AdminAddInboxCategoryForbidden with default headers values
func NewAdminAddInboxCategoryForbidden() *AdminAddInboxCategoryForbidden {
	return &AdminAddInboxCategoryForbidden{}
}

/*AdminAddInboxCategoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminAddInboxCategoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddInboxCategoryForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminAddInboxCategoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddInboxCategoryForbidden) ToJSONString() string {
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

func (o *AdminAddInboxCategoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddInboxCategoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddInboxCategoryInternalServerError creates a AdminAddInboxCategoryInternalServerError with default headers values
func NewAdminAddInboxCategoryInternalServerError() *AdminAddInboxCategoryInternalServerError {
	return &AdminAddInboxCategoryInternalServerError{}
}

/*AdminAddInboxCategoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminAddInboxCategoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddInboxCategoryInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminAddInboxCategoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddInboxCategoryInternalServerError) ToJSONString() string {
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

func (o *AdminAddInboxCategoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddInboxCategoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
