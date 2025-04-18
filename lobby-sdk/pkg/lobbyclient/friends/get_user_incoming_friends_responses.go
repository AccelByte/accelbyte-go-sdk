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

// GetUserIncomingFriendsReader is a Reader for the GetUserIncomingFriends structure.
type GetUserIncomingFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserIncomingFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserIncomingFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserIncomingFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserIncomingFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserIncomingFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserIncomingFriendsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserIncomingFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/incoming returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserIncomingFriendsOK creates a GetUserIncomingFriendsOK with default headers values
func NewGetUserIncomingFriendsOK() *GetUserIncomingFriendsOK {
	return &GetUserIncomingFriendsOK{}
}

/*GetUserIncomingFriendsOK handles this case with default header values.

  OK
*/
type GetUserIncomingFriendsOK struct {
	Payload []*lobbyclientmodels.ModelGetUserIncomingFriendsResponse
}

func (o *GetUserIncomingFriendsOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserIncomingFriendsOK) ToJSONString() string {
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

func (o *GetUserIncomingFriendsOK) GetPayload() []*lobbyclientmodels.ModelGetUserIncomingFriendsResponse {
	return o.Payload
}

func (o *GetUserIncomingFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsBadRequest creates a GetUserIncomingFriendsBadRequest with default headers values
func NewGetUserIncomingFriendsBadRequest() *GetUserIncomingFriendsBadRequest {
	return &GetUserIncomingFriendsBadRequest{}
}

/*GetUserIncomingFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserIncomingFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserIncomingFriendsBadRequest) ToJSONString() string {
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

func (o *GetUserIncomingFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsUnauthorized creates a GetUserIncomingFriendsUnauthorized with default headers values
func NewGetUserIncomingFriendsUnauthorized() *GetUserIncomingFriendsUnauthorized {
	return &GetUserIncomingFriendsUnauthorized{}
}

/*GetUserIncomingFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserIncomingFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserIncomingFriendsUnauthorized) ToJSONString() string {
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

func (o *GetUserIncomingFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsForbidden creates a GetUserIncomingFriendsForbidden with default headers values
func NewGetUserIncomingFriendsForbidden() *GetUserIncomingFriendsForbidden {
	return &GetUserIncomingFriendsForbidden{}
}

/*GetUserIncomingFriendsForbidden handles this case with default header values.

  Forbidden
*/
type GetUserIncomingFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserIncomingFriendsForbidden) ToJSONString() string {
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

func (o *GetUserIncomingFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsNotFound creates a GetUserIncomingFriendsNotFound with default headers values
func NewGetUserIncomingFriendsNotFound() *GetUserIncomingFriendsNotFound {
	return &GetUserIncomingFriendsNotFound{}
}

/*GetUserIncomingFriendsNotFound handles this case with default header values.

  Not Found
*/
type GetUserIncomingFriendsNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserIncomingFriendsNotFound) ToJSONString() string {
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

func (o *GetUserIncomingFriendsNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserIncomingFriendsInternalServerError creates a GetUserIncomingFriendsInternalServerError with default headers values
func NewGetUserIncomingFriendsInternalServerError() *GetUserIncomingFriendsInternalServerError {
	return &GetUserIncomingFriendsInternalServerError{}
}

/*GetUserIncomingFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserIncomingFriendsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserIncomingFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/incoming][%d] getUserIncomingFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserIncomingFriendsInternalServerError) ToJSONString() string {
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

func (o *GetUserIncomingFriendsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserIncomingFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
