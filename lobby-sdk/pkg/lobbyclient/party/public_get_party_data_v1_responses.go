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

// PublicGetPartyDataV1Reader is a Reader for the PublicGetPartyDataV1 structure.
type PublicGetPartyDataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPartyDataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPartyDataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPartyDataV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPartyDataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPartyDataV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPartyDataV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPartyDataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPartyDataV1OK creates a PublicGetPartyDataV1OK with default headers values
func NewPublicGetPartyDataV1OK() *PublicGetPartyDataV1OK {
	return &PublicGetPartyDataV1OK{}
}

/*PublicGetPartyDataV1OK handles this case with default header values.

  OK
*/
type PublicGetPartyDataV1OK struct {
	Payload *lobbyclientmodels.ModelsPartyData
}

func (o *PublicGetPartyDataV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPartyDataV1OK) ToJSONString() string {
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

func (o *PublicGetPartyDataV1OK) GetPayload() *lobbyclientmodels.ModelsPartyData {
	return o.Payload
}

func (o *PublicGetPartyDataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyDataV1BadRequest creates a PublicGetPartyDataV1BadRequest with default headers values
func NewPublicGetPartyDataV1BadRequest() *PublicGetPartyDataV1BadRequest {
	return &PublicGetPartyDataV1BadRequest{}
}

/*PublicGetPartyDataV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetPartyDataV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPartyDataV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPartyDataV1BadRequest) ToJSONString() string {
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

func (o *PublicGetPartyDataV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPartyDataV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyDataV1Unauthorized creates a PublicGetPartyDataV1Unauthorized with default headers values
func NewPublicGetPartyDataV1Unauthorized() *PublicGetPartyDataV1Unauthorized {
	return &PublicGetPartyDataV1Unauthorized{}
}

/*PublicGetPartyDataV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPartyDataV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPartyDataV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPartyDataV1Unauthorized) ToJSONString() string {
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

func (o *PublicGetPartyDataV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPartyDataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyDataV1Forbidden creates a PublicGetPartyDataV1Forbidden with default headers values
func NewPublicGetPartyDataV1Forbidden() *PublicGetPartyDataV1Forbidden {
	return &PublicGetPartyDataV1Forbidden{}
}

/*PublicGetPartyDataV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicGetPartyDataV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPartyDataV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPartyDataV1Forbidden) ToJSONString() string {
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

func (o *PublicGetPartyDataV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPartyDataV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyDataV1NotFound creates a PublicGetPartyDataV1NotFound with default headers values
func NewPublicGetPartyDataV1NotFound() *PublicGetPartyDataV1NotFound {
	return &PublicGetPartyDataV1NotFound{}
}

/*PublicGetPartyDataV1NotFound handles this case with default header values.

  Not Found
*/
type PublicGetPartyDataV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPartyDataV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPartyDataV1NotFound) ToJSONString() string {
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

func (o *PublicGetPartyDataV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPartyDataV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPartyDataV1InternalServerError creates a PublicGetPartyDataV1InternalServerError with default headers values
func NewPublicGetPartyDataV1InternalServerError() *PublicGetPartyDataV1InternalServerError {
	return &PublicGetPartyDataV1InternalServerError{}
}

/*PublicGetPartyDataV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPartyDataV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPartyDataV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}][%d] publicGetPartyDataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPartyDataV1InternalServerError) ToJSONString() string {
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

func (o *PublicGetPartyDataV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPartyDataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
