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

// AdminListFriendsOfFriendsReader is a Reader for the AdminListFriendsOfFriends structure.
type AdminListFriendsOfFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListFriendsOfFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListFriendsOfFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListFriendsOfFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListFriendsOfFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListFriendsOfFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListFriendsOfFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListFriendsOfFriendsOK creates a AdminListFriendsOfFriendsOK with default headers values
func NewAdminListFriendsOfFriendsOK() *AdminListFriendsOfFriendsOK {
	return &AdminListFriendsOfFriendsOK{}
}

/*AdminListFriendsOfFriendsOK handles this case with default header values.


 */
type AdminListFriendsOfFriendsOK struct {
	Payload *lobbyclientmodels.ModelFriendshipConnectionResponse
}

func (o *AdminListFriendsOfFriendsOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends][%d] adminListFriendsOfFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListFriendsOfFriendsOK) ToJSONString() string {
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

func (o *AdminListFriendsOfFriendsOK) GetPayload() *lobbyclientmodels.ModelFriendshipConnectionResponse {
	return o.Payload
}

func (o *AdminListFriendsOfFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelFriendshipConnectionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListFriendsOfFriendsBadRequest creates a AdminListFriendsOfFriendsBadRequest with default headers values
func NewAdminListFriendsOfFriendsBadRequest() *AdminListFriendsOfFriendsBadRequest {
	return &AdminListFriendsOfFriendsBadRequest{}
}

/*AdminListFriendsOfFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListFriendsOfFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminListFriendsOfFriendsBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends][%d] adminListFriendsOfFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListFriendsOfFriendsBadRequest) ToJSONString() string {
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

func (o *AdminListFriendsOfFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListFriendsOfFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListFriendsOfFriendsUnauthorized creates a AdminListFriendsOfFriendsUnauthorized with default headers values
func NewAdminListFriendsOfFriendsUnauthorized() *AdminListFriendsOfFriendsUnauthorized {
	return &AdminListFriendsOfFriendsUnauthorized{}
}

/*AdminListFriendsOfFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListFriendsOfFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminListFriendsOfFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends][%d] adminListFriendsOfFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListFriendsOfFriendsUnauthorized) ToJSONString() string {
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

func (o *AdminListFriendsOfFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListFriendsOfFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListFriendsOfFriendsForbidden creates a AdminListFriendsOfFriendsForbidden with default headers values
func NewAdminListFriendsOfFriendsForbidden() *AdminListFriendsOfFriendsForbidden {
	return &AdminListFriendsOfFriendsForbidden{}
}

/*AdminListFriendsOfFriendsForbidden handles this case with default header values.

  Forbidden
*/
type AdminListFriendsOfFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminListFriendsOfFriendsForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends][%d] adminListFriendsOfFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListFriendsOfFriendsForbidden) ToJSONString() string {
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

func (o *AdminListFriendsOfFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListFriendsOfFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListFriendsOfFriendsInternalServerError creates a AdminListFriendsOfFriendsInternalServerError with default headers values
func NewAdminListFriendsOfFriendsInternalServerError() *AdminListFriendsOfFriendsInternalServerError {
	return &AdminListFriendsOfFriendsInternalServerError{}
}

/*AdminListFriendsOfFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListFriendsOfFriendsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminListFriendsOfFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends][%d] adminListFriendsOfFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListFriendsOfFriendsInternalServerError) ToJSONString() string {
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

func (o *AdminListFriendsOfFriendsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminListFriendsOfFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
