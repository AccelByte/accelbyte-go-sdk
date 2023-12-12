// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// AdminProfanityGroupReader is a Reader for the AdminProfanityGroup structure.
type AdminProfanityGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityGroupForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityGroupOK creates a AdminProfanityGroupOK with default headers values
func NewAdminProfanityGroupOK() *AdminProfanityGroupOK {
	return &AdminProfanityGroupOK{}
}

/*AdminProfanityGroupOK handles this case with default header values.

  OK
*/
type AdminProfanityGroupOK struct {
	Payload []*chatclientmodels.ModelsDictionaryGroup
}

func (o *AdminProfanityGroupOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group][%d] adminProfanityGroupOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityGroupOK) ToJSONString() string {
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

func (o *AdminProfanityGroupOK) GetPayload() []*chatclientmodels.ModelsDictionaryGroup {
	return o.Payload
}

func (o *AdminProfanityGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityGroupBadRequest creates a AdminProfanityGroupBadRequest with default headers values
func NewAdminProfanityGroupBadRequest() *AdminProfanityGroupBadRequest {
	return &AdminProfanityGroupBadRequest{}
}

/*AdminProfanityGroupBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityGroupBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityGroupBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group][%d] adminProfanityGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityGroupBadRequest) ToJSONString() string {
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

func (o *AdminProfanityGroupBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityGroupUnauthorized creates a AdminProfanityGroupUnauthorized with default headers values
func NewAdminProfanityGroupUnauthorized() *AdminProfanityGroupUnauthorized {
	return &AdminProfanityGroupUnauthorized{}
}

/*AdminProfanityGroupUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityGroupUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityGroupUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group][%d] adminProfanityGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityGroupUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityGroupUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityGroupForbidden creates a AdminProfanityGroupForbidden with default headers values
func NewAdminProfanityGroupForbidden() *AdminProfanityGroupForbidden {
	return &AdminProfanityGroupForbidden{}
}

/*AdminProfanityGroupForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityGroupForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityGroupForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group][%d] adminProfanityGroupForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityGroupForbidden) ToJSONString() string {
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

func (o *AdminProfanityGroupForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityGroupForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityGroupInternalServerError creates a AdminProfanityGroupInternalServerError with default headers values
func NewAdminProfanityGroupInternalServerError() *AdminProfanityGroupInternalServerError {
	return &AdminProfanityGroupInternalServerError{}
}

/*AdminProfanityGroupInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityGroupInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityGroupInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group][%d] adminProfanityGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityGroupInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityGroupInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
