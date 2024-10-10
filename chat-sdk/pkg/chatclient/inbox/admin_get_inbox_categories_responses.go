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

// AdminGetInboxCategoriesReader is a Reader for the AdminGetInboxCategories structure.
type AdminGetInboxCategoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetInboxCategoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetInboxCategoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetInboxCategoriesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetInboxCategoriesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetInboxCategoriesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetInboxCategoriesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/categories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetInboxCategoriesOK creates a AdminGetInboxCategoriesOK with default headers values
func NewAdminGetInboxCategoriesOK() *AdminGetInboxCategoriesOK {
	return &AdminGetInboxCategoriesOK{}
}

/*AdminGetInboxCategoriesOK handles this case with default header values.

  OK
*/
type AdminGetInboxCategoriesOK struct {
	Payload []*chatclientmodels.ModelsGetInboxCategoriesResponseItem
}

func (o *AdminGetInboxCategoriesOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminGetInboxCategoriesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetInboxCategoriesOK) ToJSONString() string {
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

func (o *AdminGetInboxCategoriesOK) GetPayload() []*chatclientmodels.ModelsGetInboxCategoriesResponseItem {
	return o.Payload
}

func (o *AdminGetInboxCategoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxCategoriesBadRequest creates a AdminGetInboxCategoriesBadRequest with default headers values
func NewAdminGetInboxCategoriesBadRequest() *AdminGetInboxCategoriesBadRequest {
	return &AdminGetInboxCategoriesBadRequest{}
}

/*AdminGetInboxCategoriesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetInboxCategoriesBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxCategoriesBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminGetInboxCategoriesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetInboxCategoriesBadRequest) ToJSONString() string {
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

func (o *AdminGetInboxCategoriesBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxCategoriesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxCategoriesUnauthorized creates a AdminGetInboxCategoriesUnauthorized with default headers values
func NewAdminGetInboxCategoriesUnauthorized() *AdminGetInboxCategoriesUnauthorized {
	return &AdminGetInboxCategoriesUnauthorized{}
}

/*AdminGetInboxCategoriesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetInboxCategoriesUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxCategoriesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminGetInboxCategoriesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetInboxCategoriesUnauthorized) ToJSONString() string {
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

func (o *AdminGetInboxCategoriesUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxCategoriesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxCategoriesForbidden creates a AdminGetInboxCategoriesForbidden with default headers values
func NewAdminGetInboxCategoriesForbidden() *AdminGetInboxCategoriesForbidden {
	return &AdminGetInboxCategoriesForbidden{}
}

/*AdminGetInboxCategoriesForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetInboxCategoriesForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxCategoriesForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminGetInboxCategoriesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetInboxCategoriesForbidden) ToJSONString() string {
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

func (o *AdminGetInboxCategoriesForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxCategoriesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetInboxCategoriesInternalServerError creates a AdminGetInboxCategoriesInternalServerError with default headers values
func NewAdminGetInboxCategoriesInternalServerError() *AdminGetInboxCategoriesInternalServerError {
	return &AdminGetInboxCategoriesInternalServerError{}
}

/*AdminGetInboxCategoriesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetInboxCategoriesInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetInboxCategoriesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories][%d] adminGetInboxCategoriesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetInboxCategoriesInternalServerError) ToJSONString() string {
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

func (o *AdminGetInboxCategoriesInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetInboxCategoriesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
