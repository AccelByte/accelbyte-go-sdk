// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// GetUserOutgoingFriendsWithTimeReader is a Reader for the GetUserOutgoingFriendsWithTime structure.
type GetUserOutgoingFriendsWithTimeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserOutgoingFriendsWithTimeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserOutgoingFriendsWithTimeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserOutgoingFriendsWithTimeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserOutgoingFriendsWithTimeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserOutgoingFriendsWithTimeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserOutgoingFriendsWithTimeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserOutgoingFriendsWithTimeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/outgoing-time returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserOutgoingFriendsWithTimeOK creates a GetUserOutgoingFriendsWithTimeOK with default headers values
func NewGetUserOutgoingFriendsWithTimeOK() *GetUserOutgoingFriendsWithTimeOK {
	return &GetUserOutgoingFriendsWithTimeOK{}
}

/*GetUserOutgoingFriendsWithTimeOK handles this case with default header values.

  OK
*/
type GetUserOutgoingFriendsWithTimeOK struct {
	Payload []*lobbyclientmodels.ModelLoadOutgoingFriendsWithTimeResponse
}

func (o *GetUserOutgoingFriendsWithTimeOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeOK) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeOK) GetPayload() []*lobbyclientmodels.ModelLoadOutgoingFriendsWithTimeResponse {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsWithTimeBadRequest creates a GetUserOutgoingFriendsWithTimeBadRequest with default headers values
func NewGetUserOutgoingFriendsWithTimeBadRequest() *GetUserOutgoingFriendsWithTimeBadRequest {
	return &GetUserOutgoingFriendsWithTimeBadRequest{}
}

/*GetUserOutgoingFriendsWithTimeBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserOutgoingFriendsWithTimeBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsWithTimeBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeBadRequest) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserOutgoingFriendsWithTimeUnauthorized creates a GetUserOutgoingFriendsWithTimeUnauthorized with default headers values
func NewGetUserOutgoingFriendsWithTimeUnauthorized() *GetUserOutgoingFriendsWithTimeUnauthorized {
	return &GetUserOutgoingFriendsWithTimeUnauthorized{}
}

/*GetUserOutgoingFriendsWithTimeUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserOutgoingFriendsWithTimeUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsWithTimeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeUnauthorized) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserOutgoingFriendsWithTimeForbidden creates a GetUserOutgoingFriendsWithTimeForbidden with default headers values
func NewGetUserOutgoingFriendsWithTimeForbidden() *GetUserOutgoingFriendsWithTimeForbidden {
	return &GetUserOutgoingFriendsWithTimeForbidden{}
}

/*GetUserOutgoingFriendsWithTimeForbidden handles this case with default header values.

  Forbidden
*/
type GetUserOutgoingFriendsWithTimeForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsWithTimeForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeForbidden) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserOutgoingFriendsWithTimeNotFound creates a GetUserOutgoingFriendsWithTimeNotFound with default headers values
func NewGetUserOutgoingFriendsWithTimeNotFound() *GetUserOutgoingFriendsWithTimeNotFound {
	return &GetUserOutgoingFriendsWithTimeNotFound{}
}

/*GetUserOutgoingFriendsWithTimeNotFound handles this case with default header values.

  Not Found
*/
type GetUserOutgoingFriendsWithTimeNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsWithTimeNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeNotFound) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserOutgoingFriendsWithTimeInternalServerError creates a GetUserOutgoingFriendsWithTimeInternalServerError with default headers values
func NewGetUserOutgoingFriendsWithTimeInternalServerError() *GetUserOutgoingFriendsWithTimeInternalServerError {
	return &GetUserOutgoingFriendsWithTimeInternalServerError{}
}

/*GetUserOutgoingFriendsWithTimeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserOutgoingFriendsWithTimeInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsWithTimeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing-time][%d] getUserOutgoingFriendsWithTimeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsWithTimeInternalServerError) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsWithTimeInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsWithTimeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
