// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// AdminGetUserPartyV1Reader is a Reader for the AdminGetUserPartyV1 structure.
type AdminGetUserPartyV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserPartyV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserPartyV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserPartyV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserPartyV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserPartyV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserPartyV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserPartyV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserPartyV1OK creates a AdminGetUserPartyV1OK with default headers values
func NewAdminGetUserPartyV1OK() *AdminGetUserPartyV1OK {
	return &AdminGetUserPartyV1OK{}
}

/*AdminGetUserPartyV1OK handles this case with default header values.

  OK
*/
type AdminGetUserPartyV1OK struct {
	Payload *lobbyclientmodels.ModelsPartyData
}

func (o *AdminGetUserPartyV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserPartyV1OK) ToJSONString() string {
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

func (o *AdminGetUserPartyV1OK) GetPayload() *lobbyclientmodels.ModelsPartyData {
	return o.Payload
}

func (o *AdminGetUserPartyV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsPartyData)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPartyV1BadRequest creates a AdminGetUserPartyV1BadRequest with default headers values
func NewAdminGetUserPartyV1BadRequest() *AdminGetUserPartyV1BadRequest {
	return &AdminGetUserPartyV1BadRequest{}
}

/*AdminGetUserPartyV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetUserPartyV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetUserPartyV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserPartyV1BadRequest) ToJSONString() string {
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

func (o *AdminGetUserPartyV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetUserPartyV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPartyV1Unauthorized creates a AdminGetUserPartyV1Unauthorized with default headers values
func NewAdminGetUserPartyV1Unauthorized() *AdminGetUserPartyV1Unauthorized {
	return &AdminGetUserPartyV1Unauthorized{}
}

/*AdminGetUserPartyV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserPartyV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetUserPartyV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserPartyV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserPartyV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetUserPartyV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPartyV1Forbidden creates a AdminGetUserPartyV1Forbidden with default headers values
func NewAdminGetUserPartyV1Forbidden() *AdminGetUserPartyV1Forbidden {
	return &AdminGetUserPartyV1Forbidden{}
}

/*AdminGetUserPartyV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetUserPartyV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetUserPartyV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserPartyV1Forbidden) ToJSONString() string {
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

func (o *AdminGetUserPartyV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetUserPartyV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPartyV1NotFound creates a AdminGetUserPartyV1NotFound with default headers values
func NewAdminGetUserPartyV1NotFound() *AdminGetUserPartyV1NotFound {
	return &AdminGetUserPartyV1NotFound{}
}

/*AdminGetUserPartyV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetUserPartyV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetUserPartyV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserPartyV1NotFound) ToJSONString() string {
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

func (o *AdminGetUserPartyV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetUserPartyV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetUserPartyV1InternalServerError creates a AdminGetUserPartyV1InternalServerError with default headers values
func NewAdminGetUserPartyV1InternalServerError() *AdminGetUserPartyV1InternalServerError {
	return &AdminGetUserPartyV1InternalServerError{}
}

/*AdminGetUserPartyV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserPartyV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetUserPartyV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party][%d] adminGetUserPartyV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserPartyV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserPartyV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetUserPartyV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
