// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobby_operations

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

// AdminUpdatePartyAttributesV1Reader is a Reader for the AdminUpdatePartyAttributesV1 structure.
type AdminUpdatePartyAttributesV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdatePartyAttributesV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdatePartyAttributesV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdatePartyAttributesV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdatePartyAttributesV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdatePartyAttributesV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdatePartyAttributesV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminUpdatePartyAttributesV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdatePartyAttributesV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdatePartyAttributesV1OK creates a AdminUpdatePartyAttributesV1OK with default headers values
func NewAdminUpdatePartyAttributesV1OK() *AdminUpdatePartyAttributesV1OK {
	return &AdminUpdatePartyAttributesV1OK{}
}

/*AdminUpdatePartyAttributesV1OK handles this case with default header values.

  OK
*/
type AdminUpdatePartyAttributesV1OK struct {
	Payload *lobbyclientmodels.ModelsPartyData
}

func (o *AdminUpdatePartyAttributesV1OK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1OK) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1OK) GetPayload() *lobbyclientmodels.ModelsPartyData {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1BadRequest creates a AdminUpdatePartyAttributesV1BadRequest with default headers values
func NewAdminUpdatePartyAttributesV1BadRequest() *AdminUpdatePartyAttributesV1BadRequest {
	return &AdminUpdatePartyAttributesV1BadRequest{}
}

/*AdminUpdatePartyAttributesV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdatePartyAttributesV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1BadRequest) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1Unauthorized creates a AdminUpdatePartyAttributesV1Unauthorized with default headers values
func NewAdminUpdatePartyAttributesV1Unauthorized() *AdminUpdatePartyAttributesV1Unauthorized {
	return &AdminUpdatePartyAttributesV1Unauthorized{}
}

/*AdminUpdatePartyAttributesV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdatePartyAttributesV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1Unauthorized) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1Forbidden creates a AdminUpdatePartyAttributesV1Forbidden with default headers values
func NewAdminUpdatePartyAttributesV1Forbidden() *AdminUpdatePartyAttributesV1Forbidden {
	return &AdminUpdatePartyAttributesV1Forbidden{}
}

/*AdminUpdatePartyAttributesV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdatePartyAttributesV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1Forbidden) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1NotFound creates a AdminUpdatePartyAttributesV1NotFound with default headers values
func NewAdminUpdatePartyAttributesV1NotFound() *AdminUpdatePartyAttributesV1NotFound {
	return &AdminUpdatePartyAttributesV1NotFound{}
}

/*AdminUpdatePartyAttributesV1NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdatePartyAttributesV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1NotFound) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1PreconditionFailed creates a AdminUpdatePartyAttributesV1PreconditionFailed with default headers values
func NewAdminUpdatePartyAttributesV1PreconditionFailed() *AdminUpdatePartyAttributesV1PreconditionFailed {
	return &AdminUpdatePartyAttributesV1PreconditionFailed{}
}

/*AdminUpdatePartyAttributesV1PreconditionFailed handles this case with default header values.

  Precondition Failed
*/
type AdminUpdatePartyAttributesV1PreconditionFailed struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1PreconditionFailed) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePartyAttributesV1InternalServerError creates a AdminUpdatePartyAttributesV1InternalServerError with default headers values
func NewAdminUpdatePartyAttributesV1InternalServerError() *AdminUpdatePartyAttributesV1InternalServerError {
	return &AdminUpdatePartyAttributesV1InternalServerError{}
}

/*AdminUpdatePartyAttributesV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdatePartyAttributesV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdatePartyAttributesV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] adminUpdatePartyAttributesV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdatePartyAttributesV1InternalServerError) ToJSONString() string {
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

func (o *AdminUpdatePartyAttributesV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdatePartyAttributesV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
