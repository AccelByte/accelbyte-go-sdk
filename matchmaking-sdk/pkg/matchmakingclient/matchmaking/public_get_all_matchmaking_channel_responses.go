// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// PublicGetAllMatchmakingChannelReader is a Reader for the PublicGetAllMatchmakingChannel structure.
type PublicGetAllMatchmakingChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetAllMatchmakingChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetAllMatchmakingChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetAllMatchmakingChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetAllMatchmakingChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetAllMatchmakingChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicGetAllMatchmakingChannelConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetAllMatchmakingChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/public/namespaces/{namespace}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetAllMatchmakingChannelOK creates a PublicGetAllMatchmakingChannelOK with default headers values
func NewPublicGetAllMatchmakingChannelOK() *PublicGetAllMatchmakingChannelOK {
	return &PublicGetAllMatchmakingChannelOK{}
}

/*PublicGetAllMatchmakingChannelOK handles this case with default header values.

  OK
*/
type PublicGetAllMatchmakingChannelOK struct {
	Payload []*matchmakingclientmodels.ModelsChannelV1
}

func (o *PublicGetAllMatchmakingChannelOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelOK) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelOK) GetPayload() []*matchmakingclientmodels.ModelsChannelV1 {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetAllMatchmakingChannelBadRequest creates a PublicGetAllMatchmakingChannelBadRequest with default headers values
func NewPublicGetAllMatchmakingChannelBadRequest() *PublicGetAllMatchmakingChannelBadRequest {
	return &PublicGetAllMatchmakingChannelBadRequest{}
}

/*PublicGetAllMatchmakingChannelBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetAllMatchmakingChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *PublicGetAllMatchmakingChannelBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelBadRequest) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAllMatchmakingChannelUnauthorized creates a PublicGetAllMatchmakingChannelUnauthorized with default headers values
func NewPublicGetAllMatchmakingChannelUnauthorized() *PublicGetAllMatchmakingChannelUnauthorized {
	return &PublicGetAllMatchmakingChannelUnauthorized{}
}

/*PublicGetAllMatchmakingChannelUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetAllMatchmakingChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *PublicGetAllMatchmakingChannelUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelUnauthorized) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAllMatchmakingChannelForbidden creates a PublicGetAllMatchmakingChannelForbidden with default headers values
func NewPublicGetAllMatchmakingChannelForbidden() *PublicGetAllMatchmakingChannelForbidden {
	return &PublicGetAllMatchmakingChannelForbidden{}
}

/*PublicGetAllMatchmakingChannelForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetAllMatchmakingChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *PublicGetAllMatchmakingChannelForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelForbidden) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAllMatchmakingChannelConflict creates a PublicGetAllMatchmakingChannelConflict with default headers values
func NewPublicGetAllMatchmakingChannelConflict() *PublicGetAllMatchmakingChannelConflict {
	return &PublicGetAllMatchmakingChannelConflict{}
}

/*PublicGetAllMatchmakingChannelConflict handles this case with default header values.

  Conflict
*/
type PublicGetAllMatchmakingChannelConflict struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *PublicGetAllMatchmakingChannelConflict) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelConflict) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelConflict) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAllMatchmakingChannelInternalServerError creates a PublicGetAllMatchmakingChannelInternalServerError with default headers values
func NewPublicGetAllMatchmakingChannelInternalServerError() *PublicGetAllMatchmakingChannelInternalServerError {
	return &PublicGetAllMatchmakingChannelInternalServerError{}
}

/*PublicGetAllMatchmakingChannelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetAllMatchmakingChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *PublicGetAllMatchmakingChannelInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels][%d] publicGetAllMatchmakingChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetAllMatchmakingChannelInternalServerError) ToJSONString() string {
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

func (o *PublicGetAllMatchmakingChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAllMatchmakingChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
