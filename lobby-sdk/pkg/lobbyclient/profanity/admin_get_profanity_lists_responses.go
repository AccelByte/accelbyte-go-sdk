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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminGetProfanityListsReader is a Reader for the AdminGetProfanityLists structure.
type AdminGetProfanityListsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetProfanityListsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetProfanityListsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetProfanityListsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetProfanityListsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetProfanityListsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetProfanityListsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetProfanityListsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetProfanityListsOK creates a AdminGetProfanityListsOK with default headers values
func NewAdminGetProfanityListsOK() *AdminGetProfanityListsOK {
	return &AdminGetProfanityListsOK{}
}

/*AdminGetProfanityListsOK handles this case with default header values.

  OK
*/
type AdminGetProfanityListsOK struct {
	Payload []*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse
}

func (o *AdminGetProfanityListsOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetProfanityListsOK) ToJSONString() string {
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

func (o *AdminGetProfanityListsOK) GetPayload() []*lobbyclientmodels.ModelsAdminGetProfanityListsListResponse {
	return o.Payload
}

func (o *AdminGetProfanityListsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetProfanityListsBadRequest creates a AdminGetProfanityListsBadRequest with default headers values
func NewAdminGetProfanityListsBadRequest() *AdminGetProfanityListsBadRequest {
	return &AdminGetProfanityListsBadRequest{}
}

/*AdminGetProfanityListsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetProfanityListsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListsBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetProfanityListsBadRequest) ToJSONString() string {
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

func (o *AdminGetProfanityListsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityListsUnauthorized creates a AdminGetProfanityListsUnauthorized with default headers values
func NewAdminGetProfanityListsUnauthorized() *AdminGetProfanityListsUnauthorized {
	return &AdminGetProfanityListsUnauthorized{}
}

/*AdminGetProfanityListsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetProfanityListsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetProfanityListsUnauthorized) ToJSONString() string {
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

func (o *AdminGetProfanityListsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityListsForbidden creates a AdminGetProfanityListsForbidden with default headers values
func NewAdminGetProfanityListsForbidden() *AdminGetProfanityListsForbidden {
	return &AdminGetProfanityListsForbidden{}
}

/*AdminGetProfanityListsForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetProfanityListsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListsForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetProfanityListsForbidden) ToJSONString() string {
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

func (o *AdminGetProfanityListsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityListsNotFound creates a AdminGetProfanityListsNotFound with default headers values
func NewAdminGetProfanityListsNotFound() *AdminGetProfanityListsNotFound {
	return &AdminGetProfanityListsNotFound{}
}

/*AdminGetProfanityListsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetProfanityListsNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListsNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetProfanityListsNotFound) ToJSONString() string {
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

func (o *AdminGetProfanityListsNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityListsInternalServerError creates a AdminGetProfanityListsInternalServerError with default headers values
func NewAdminGetProfanityListsInternalServerError() *AdminGetProfanityListsInternalServerError {
	return &AdminGetProfanityListsInternalServerError{}
}

/*AdminGetProfanityListsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetProfanityListsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/lists][%d] adminGetProfanityListsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetProfanityListsInternalServerError) ToJSONString() string {
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

func (o *AdminGetProfanityListsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
