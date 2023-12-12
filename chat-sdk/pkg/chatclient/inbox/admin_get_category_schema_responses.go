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

// AdminGetCategorySchemaReader is a Reader for the AdminGetCategorySchema structure.
type AdminGetCategorySchemaReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetCategorySchemaReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetCategorySchemaOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetCategorySchemaBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetCategorySchemaUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetCategorySchemaForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetCategorySchemaNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetCategorySchemaInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetCategorySchemaOK creates a AdminGetCategorySchemaOK with default headers values
func NewAdminGetCategorySchemaOK() *AdminGetCategorySchemaOK {
	return &AdminGetCategorySchemaOK{}
}

/*AdminGetCategorySchemaOK handles this case with default header values.

  OK
*/
type AdminGetCategorySchemaOK struct {
	Payload *chatclientmodels.ModelsJSONSchemaType
}

func (o *AdminGetCategorySchemaOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetCategorySchemaOK) ToJSONString() string {
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

func (o *AdminGetCategorySchemaOK) GetPayload() *chatclientmodels.ModelsJSONSchemaType {
	return o.Payload
}

func (o *AdminGetCategorySchemaOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsJSONSchemaType)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetCategorySchemaBadRequest creates a AdminGetCategorySchemaBadRequest with default headers values
func NewAdminGetCategorySchemaBadRequest() *AdminGetCategorySchemaBadRequest {
	return &AdminGetCategorySchemaBadRequest{}
}

/*AdminGetCategorySchemaBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetCategorySchemaBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetCategorySchemaBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetCategorySchemaBadRequest) ToJSONString() string {
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

func (o *AdminGetCategorySchemaBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetCategorySchemaBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetCategorySchemaUnauthorized creates a AdminGetCategorySchemaUnauthorized with default headers values
func NewAdminGetCategorySchemaUnauthorized() *AdminGetCategorySchemaUnauthorized {
	return &AdminGetCategorySchemaUnauthorized{}
}

/*AdminGetCategorySchemaUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetCategorySchemaUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetCategorySchemaUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetCategorySchemaUnauthorized) ToJSONString() string {
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

func (o *AdminGetCategorySchemaUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetCategorySchemaUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetCategorySchemaForbidden creates a AdminGetCategorySchemaForbidden with default headers values
func NewAdminGetCategorySchemaForbidden() *AdminGetCategorySchemaForbidden {
	return &AdminGetCategorySchemaForbidden{}
}

/*AdminGetCategorySchemaForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetCategorySchemaForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetCategorySchemaForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetCategorySchemaForbidden) ToJSONString() string {
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

func (o *AdminGetCategorySchemaForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetCategorySchemaForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetCategorySchemaNotFound creates a AdminGetCategorySchemaNotFound with default headers values
func NewAdminGetCategorySchemaNotFound() *AdminGetCategorySchemaNotFound {
	return &AdminGetCategorySchemaNotFound{}
}

/*AdminGetCategorySchemaNotFound handles this case with default header values.

  Forbidden
*/
type AdminGetCategorySchemaNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetCategorySchemaNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetCategorySchemaNotFound) ToJSONString() string {
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

func (o *AdminGetCategorySchemaNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetCategorySchemaNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetCategorySchemaInternalServerError creates a AdminGetCategorySchemaInternalServerError with default headers values
func NewAdminGetCategorySchemaInternalServerError() *AdminGetCategorySchemaInternalServerError {
	return &AdminGetCategorySchemaInternalServerError{}
}

/*AdminGetCategorySchemaInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetCategorySchemaInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetCategorySchemaInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json][%d] adminGetCategorySchemaInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetCategorySchemaInternalServerError) ToJSONString() string {
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

func (o *AdminGetCategorySchemaInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetCategorySchemaInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
