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

// AdminAddProfanityFilterIntoListReader is a Reader for the AdminAddProfanityFilterIntoList structure.
type AdminAddProfanityFilterIntoListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddProfanityFilterIntoListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminAddProfanityFilterIntoListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddProfanityFilterIntoListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddProfanityFilterIntoListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddProfanityFilterIntoListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddProfanityFilterIntoListNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddProfanityFilterIntoListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddProfanityFilterIntoListOK creates a AdminAddProfanityFilterIntoListOK with default headers values
func NewAdminAddProfanityFilterIntoListOK() *AdminAddProfanityFilterIntoListOK {
	return &AdminAddProfanityFilterIntoListOK{}
}

/*AdminAddProfanityFilterIntoListOK handles this case with default header values.

  OK
*/
type AdminAddProfanityFilterIntoListOK struct {
}

func (o *AdminAddProfanityFilterIntoListOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListOK ", 200)
}

func (o *AdminAddProfanityFilterIntoListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddProfanityFilterIntoListBadRequest creates a AdminAddProfanityFilterIntoListBadRequest with default headers values
func NewAdminAddProfanityFilterIntoListBadRequest() *AdminAddProfanityFilterIntoListBadRequest {
	return &AdminAddProfanityFilterIntoListBadRequest{}
}

/*AdminAddProfanityFilterIntoListBadRequest handles this case with default header values.

  Bad Request
*/
type AdminAddProfanityFilterIntoListBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddProfanityFilterIntoListBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddProfanityFilterIntoListBadRequest) ToJSONString() string {
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

func (o *AdminAddProfanityFilterIntoListBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddProfanityFilterIntoListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddProfanityFilterIntoListUnauthorized creates a AdminAddProfanityFilterIntoListUnauthorized with default headers values
func NewAdminAddProfanityFilterIntoListUnauthorized() *AdminAddProfanityFilterIntoListUnauthorized {
	return &AdminAddProfanityFilterIntoListUnauthorized{}
}

/*AdminAddProfanityFilterIntoListUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminAddProfanityFilterIntoListUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddProfanityFilterIntoListUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddProfanityFilterIntoListUnauthorized) ToJSONString() string {
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

func (o *AdminAddProfanityFilterIntoListUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddProfanityFilterIntoListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddProfanityFilterIntoListForbidden creates a AdminAddProfanityFilterIntoListForbidden with default headers values
func NewAdminAddProfanityFilterIntoListForbidden() *AdminAddProfanityFilterIntoListForbidden {
	return &AdminAddProfanityFilterIntoListForbidden{}
}

/*AdminAddProfanityFilterIntoListForbidden handles this case with default header values.

  Forbidden
*/
type AdminAddProfanityFilterIntoListForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddProfanityFilterIntoListForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddProfanityFilterIntoListForbidden) ToJSONString() string {
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

func (o *AdminAddProfanityFilterIntoListForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddProfanityFilterIntoListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddProfanityFilterIntoListNotFound creates a AdminAddProfanityFilterIntoListNotFound with default headers values
func NewAdminAddProfanityFilterIntoListNotFound() *AdminAddProfanityFilterIntoListNotFound {
	return &AdminAddProfanityFilterIntoListNotFound{}
}

/*AdminAddProfanityFilterIntoListNotFound handles this case with default header values.

  Not Found
*/
type AdminAddProfanityFilterIntoListNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddProfanityFilterIntoListNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddProfanityFilterIntoListNotFound) ToJSONString() string {
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

func (o *AdminAddProfanityFilterIntoListNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddProfanityFilterIntoListNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddProfanityFilterIntoListInternalServerError creates a AdminAddProfanityFilterIntoListInternalServerError with default headers values
func NewAdminAddProfanityFilterIntoListInternalServerError() *AdminAddProfanityFilterIntoListInternalServerError {
	return &AdminAddProfanityFilterIntoListInternalServerError{}
}

/*AdminAddProfanityFilterIntoListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminAddProfanityFilterIntoListInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminAddProfanityFilterIntoListInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminAddProfanityFilterIntoListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddProfanityFilterIntoListInternalServerError) ToJSONString() string {
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

func (o *AdminAddProfanityFilterIntoListInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminAddProfanityFilterIntoListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
