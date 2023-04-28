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

// PublicGetSingleMatchmakingChannelReader is a Reader for the PublicGetSingleMatchmakingChannel structure.
type PublicGetSingleMatchmakingChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetSingleMatchmakingChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetSingleMatchmakingChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetSingleMatchmakingChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetSingleMatchmakingChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetSingleMatchmakingChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetSingleMatchmakingChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetSingleMatchmakingChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetSingleMatchmakingChannelOK creates a PublicGetSingleMatchmakingChannelOK with default headers values
func NewPublicGetSingleMatchmakingChannelOK() *PublicGetSingleMatchmakingChannelOK {
	return &PublicGetSingleMatchmakingChannelOK{}
}

/*PublicGetSingleMatchmakingChannelOK handles this case with default header values.

  OK
*/
type PublicGetSingleMatchmakingChannelOK struct {
	Payload *matchmakingclientmodels.ModelsChannelV1
}

func (o *PublicGetSingleMatchmakingChannelOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelOK) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelOK) GetPayload() *matchmakingclientmodels.ModelsChannelV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsChannelV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSingleMatchmakingChannelBadRequest creates a PublicGetSingleMatchmakingChannelBadRequest with default headers values
func NewPublicGetSingleMatchmakingChannelBadRequest() *PublicGetSingleMatchmakingChannelBadRequest {
	return &PublicGetSingleMatchmakingChannelBadRequest{}
}

/*PublicGetSingleMatchmakingChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetSingleMatchmakingChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *PublicGetSingleMatchmakingChannelBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelBadRequest) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSingleMatchmakingChannelUnauthorized creates a PublicGetSingleMatchmakingChannelUnauthorized with default headers values
func NewPublicGetSingleMatchmakingChannelUnauthorized() *PublicGetSingleMatchmakingChannelUnauthorized {
	return &PublicGetSingleMatchmakingChannelUnauthorized{}
}

/*PublicGetSingleMatchmakingChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetSingleMatchmakingChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *PublicGetSingleMatchmakingChannelUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelUnauthorized) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSingleMatchmakingChannelForbidden creates a PublicGetSingleMatchmakingChannelForbidden with default headers values
func NewPublicGetSingleMatchmakingChannelForbidden() *PublicGetSingleMatchmakingChannelForbidden {
	return &PublicGetSingleMatchmakingChannelForbidden{}
}

/*PublicGetSingleMatchmakingChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type PublicGetSingleMatchmakingChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *PublicGetSingleMatchmakingChannelForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelForbidden) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSingleMatchmakingChannelNotFound creates a PublicGetSingleMatchmakingChannelNotFound with default headers values
func NewPublicGetSingleMatchmakingChannelNotFound() *PublicGetSingleMatchmakingChannelNotFound {
	return &PublicGetSingleMatchmakingChannelNotFound{}
}

/*PublicGetSingleMatchmakingChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type PublicGetSingleMatchmakingChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *PublicGetSingleMatchmakingChannelNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelNotFound) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSingleMatchmakingChannelInternalServerError creates a PublicGetSingleMatchmakingChannelInternalServerError with default headers values
func NewPublicGetSingleMatchmakingChannelInternalServerError() *PublicGetSingleMatchmakingChannelInternalServerError {
	return &PublicGetSingleMatchmakingChannelInternalServerError{}
}

/*PublicGetSingleMatchmakingChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetSingleMatchmakingChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *PublicGetSingleMatchmakingChannelInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}][%d] publicGetSingleMatchmakingChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetSingleMatchmakingChannelInternalServerError) ToJSONString() string {
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

func (o *PublicGetSingleMatchmakingChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *PublicGetSingleMatchmakingChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
