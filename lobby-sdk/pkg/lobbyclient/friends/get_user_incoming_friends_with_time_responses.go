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

// GetUserIncomingFriendsWithTimeReader is a Reader for the GetUserIncomingFriendsWithTime structure.
type GetUserIncomingFriendsWithTimeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserIncomingFriendsWithTimeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserIncomingFriendsWithTimeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserIncomingFriendsWithTimeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserIncomingFriendsWithTimeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserIncomingFriendsWithTimeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserIncomingFriendsWithTimeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserIncomingFriendsWithTimeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/incoming-time returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserIncomingFriendsWithTimeOK creates a GetUserIncomingFriendsWithTimeOK with default headers values
func NewGetUserIncomingFriendsWithTimeOK() *GetUserIncomingFriendsWithTimeOK {
	return &GetUserIncomingFriendsWithTimeOK{}
}

/*GetUserIncomingFriendsWithTimeOK handles this case with default header values.

  OK
*/
type GetUserIncomingFriendsWithTimeOK struct {
	Payload []*lobbyclientmodels.ModelLoadIncomingFriendsWithTimeResponse
}

func (o *GetUserIncomingFriendsWithTimeOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeOK) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeOK) GetPayload() []*lobbyclientmodels.ModelLoadIncomingFriendsWithTimeResponse {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsWithTimeBadRequest creates a GetUserIncomingFriendsWithTimeBadRequest with default headers values
func NewGetUserIncomingFriendsWithTimeBadRequest() *GetUserIncomingFriendsWithTimeBadRequest {
	return &GetUserIncomingFriendsWithTimeBadRequest{}
}

/*GetUserIncomingFriendsWithTimeBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserIncomingFriendsWithTimeBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsWithTimeBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeBadRequest) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsWithTimeUnauthorized creates a GetUserIncomingFriendsWithTimeUnauthorized with default headers values
func NewGetUserIncomingFriendsWithTimeUnauthorized() *GetUserIncomingFriendsWithTimeUnauthorized {
	return &GetUserIncomingFriendsWithTimeUnauthorized{}
}

/*GetUserIncomingFriendsWithTimeUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserIncomingFriendsWithTimeUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsWithTimeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeUnauthorized) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsWithTimeForbidden creates a GetUserIncomingFriendsWithTimeForbidden with default headers values
func NewGetUserIncomingFriendsWithTimeForbidden() *GetUserIncomingFriendsWithTimeForbidden {
	return &GetUserIncomingFriendsWithTimeForbidden{}
}

/*GetUserIncomingFriendsWithTimeForbidden handles this case with default header values.

  Forbidden
*/
type GetUserIncomingFriendsWithTimeForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsWithTimeForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeForbidden) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsWithTimeNotFound creates a GetUserIncomingFriendsWithTimeNotFound with default headers values
func NewGetUserIncomingFriendsWithTimeNotFound() *GetUserIncomingFriendsWithTimeNotFound {
	return &GetUserIncomingFriendsWithTimeNotFound{}
}

/*GetUserIncomingFriendsWithTimeNotFound handles this case with default header values.

  Not Found
*/
type GetUserIncomingFriendsWithTimeNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsWithTimeNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeNotFound) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsWithTimeInternalServerError creates a GetUserIncomingFriendsWithTimeInternalServerError with default headers values
func NewGetUserIncomingFriendsWithTimeInternalServerError() *GetUserIncomingFriendsWithTimeInternalServerError {
	return &GetUserIncomingFriendsWithTimeInternalServerError{}
}

/*GetUserIncomingFriendsWithTimeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserIncomingFriendsWithTimeInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsWithTimeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming-time][%d] getUserIncomingFriendsWithTimeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserIncomingFriendsWithTimeInternalServerError) ToJSONString() string {
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

func (o *GetUserIncomingFriendsWithTimeInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsWithTimeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
