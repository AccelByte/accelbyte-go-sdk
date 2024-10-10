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

// GetUserOutgoingFriendsReader is a Reader for the GetUserOutgoingFriends structure.
type GetUserOutgoingFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserOutgoingFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserOutgoingFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserOutgoingFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserOutgoingFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserOutgoingFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserOutgoingFriendsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserOutgoingFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/outgoing returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserOutgoingFriendsOK creates a GetUserOutgoingFriendsOK with default headers values
func NewGetUserOutgoingFriendsOK() *GetUserOutgoingFriendsOK {
	return &GetUserOutgoingFriendsOK{}
}

/*GetUserOutgoingFriendsOK handles this case with default header values.

  OK
*/
type GetUserOutgoingFriendsOK struct {
	Payload []*lobbyclientmodels.ModelGetUserOutgoingFriendsResponse
}

func (o *GetUserOutgoingFriendsOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsOK) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsOK) GetPayload() []*lobbyclientmodels.ModelGetUserOutgoingFriendsResponse {
	return o.Payload
}

func (o *GetUserOutgoingFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsBadRequest creates a GetUserOutgoingFriendsBadRequest with default headers values
func NewGetUserOutgoingFriendsBadRequest() *GetUserOutgoingFriendsBadRequest {
	return &GetUserOutgoingFriendsBadRequest{}
}

/*GetUserOutgoingFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserOutgoingFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsBadRequest) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsUnauthorized creates a GetUserOutgoingFriendsUnauthorized with default headers values
func NewGetUserOutgoingFriendsUnauthorized() *GetUserOutgoingFriendsUnauthorized {
	return &GetUserOutgoingFriendsUnauthorized{}
}

/*GetUserOutgoingFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserOutgoingFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsUnauthorized) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsForbidden creates a GetUserOutgoingFriendsForbidden with default headers values
func NewGetUserOutgoingFriendsForbidden() *GetUserOutgoingFriendsForbidden {
	return &GetUserOutgoingFriendsForbidden{}
}

/*GetUserOutgoingFriendsForbidden handles this case with default header values.

  Forbidden
*/
type GetUserOutgoingFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsForbidden) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsNotFound creates a GetUserOutgoingFriendsNotFound with default headers values
func NewGetUserOutgoingFriendsNotFound() *GetUserOutgoingFriendsNotFound {
	return &GetUserOutgoingFriendsNotFound{}
}

/*GetUserOutgoingFriendsNotFound handles this case with default header values.

  Not Found
*/
type GetUserOutgoingFriendsNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsNotFound) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserOutgoingFriendsInternalServerError creates a GetUserOutgoingFriendsInternalServerError with default headers values
func NewGetUserOutgoingFriendsInternalServerError() *GetUserOutgoingFriendsInternalServerError {
	return &GetUserOutgoingFriendsInternalServerError{}
}

/*GetUserOutgoingFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserOutgoingFriendsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserOutgoingFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/outgoing][%d] getUserOutgoingFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserOutgoingFriendsInternalServerError) ToJSONString() string {
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

func (o *GetUserOutgoingFriendsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserOutgoingFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
