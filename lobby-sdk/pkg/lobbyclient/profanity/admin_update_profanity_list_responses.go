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

// AdminUpdateProfanityListReader is a Reader for the AdminUpdateProfanityList structure.
type AdminUpdateProfanityListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateProfanityListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateProfanityListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateProfanityListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateProfanityListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateProfanityListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateProfanityListNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateProfanityListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateProfanityListOK creates a AdminUpdateProfanityListOK with default headers values
func NewAdminUpdateProfanityListOK() *AdminUpdateProfanityListOK {
	return &AdminUpdateProfanityListOK{}
}

/*AdminUpdateProfanityListOK handles this case with default header values.

  OK
*/
type AdminUpdateProfanityListOK struct {
}

func (o *AdminUpdateProfanityListOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListOK ", 200)
}

func (o *AdminUpdateProfanityListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateProfanityListBadRequest creates a AdminUpdateProfanityListBadRequest with default headers values
func NewAdminUpdateProfanityListBadRequest() *AdminUpdateProfanityListBadRequest {
	return &AdminUpdateProfanityListBadRequest{}
}

/*AdminUpdateProfanityListBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateProfanityListBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateProfanityListBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateProfanityListBadRequest) ToJSONString() string {
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

func (o *AdminUpdateProfanityListBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateProfanityListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateProfanityListUnauthorized creates a AdminUpdateProfanityListUnauthorized with default headers values
func NewAdminUpdateProfanityListUnauthorized() *AdminUpdateProfanityListUnauthorized {
	return &AdminUpdateProfanityListUnauthorized{}
}

/*AdminUpdateProfanityListUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateProfanityListUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateProfanityListUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateProfanityListUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateProfanityListUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateProfanityListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateProfanityListForbidden creates a AdminUpdateProfanityListForbidden with default headers values
func NewAdminUpdateProfanityListForbidden() *AdminUpdateProfanityListForbidden {
	return &AdminUpdateProfanityListForbidden{}
}

/*AdminUpdateProfanityListForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateProfanityListForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateProfanityListForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateProfanityListForbidden) ToJSONString() string {
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

func (o *AdminUpdateProfanityListForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateProfanityListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateProfanityListNotFound creates a AdminUpdateProfanityListNotFound with default headers values
func NewAdminUpdateProfanityListNotFound() *AdminUpdateProfanityListNotFound {
	return &AdminUpdateProfanityListNotFound{}
}

/*AdminUpdateProfanityListNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateProfanityListNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateProfanityListNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateProfanityListNotFound) ToJSONString() string {
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

func (o *AdminUpdateProfanityListNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateProfanityListNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateProfanityListInternalServerError creates a AdminUpdateProfanityListInternalServerError with default headers values
func NewAdminUpdateProfanityListInternalServerError() *AdminUpdateProfanityListInternalServerError {
	return &AdminUpdateProfanityListInternalServerError{}
}

/*AdminUpdateProfanityListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateProfanityListInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateProfanityListInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminUpdateProfanityListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateProfanityListInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateProfanityListInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateProfanityListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
