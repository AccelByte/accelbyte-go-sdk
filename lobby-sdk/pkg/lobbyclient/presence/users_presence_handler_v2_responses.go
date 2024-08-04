// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package presence

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

// UsersPresenceHandlerV2Reader is a Reader for the UsersPresenceHandlerV2 structure.
type UsersPresenceHandlerV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UsersPresenceHandlerV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUsersPresenceHandlerV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUsersPresenceHandlerV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUsersPresenceHandlerV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUsersPresenceHandlerV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/public/presence/namespaces/{namespace}/users/presence returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUsersPresenceHandlerV2OK creates a UsersPresenceHandlerV2OK with default headers values
func NewUsersPresenceHandlerV2OK() *UsersPresenceHandlerV2OK {
	return &UsersPresenceHandlerV2OK{}
}

/*UsersPresenceHandlerV2OK handles this case with default header values.

  OK
*/
type UsersPresenceHandlerV2OK struct {
	Payload *lobbyclientmodels.HandlersGetUsersPresenceResponse
}

func (o *UsersPresenceHandlerV2OK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV2OK  %+v", 200, o.ToJSONString())
}

func (o *UsersPresenceHandlerV2OK) ToJSONString() string {
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

func (o *UsersPresenceHandlerV2OK) GetPayload() *lobbyclientmodels.HandlersGetUsersPresenceResponse {
	return o.Payload
}

func (o *UsersPresenceHandlerV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.HandlersGetUsersPresenceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUsersPresenceHandlerV2BadRequest creates a UsersPresenceHandlerV2BadRequest with default headers values
func NewUsersPresenceHandlerV2BadRequest() *UsersPresenceHandlerV2BadRequest {
	return &UsersPresenceHandlerV2BadRequest{}
}

/*UsersPresenceHandlerV2BadRequest handles this case with default header values.

  Bad Request
*/
type UsersPresenceHandlerV2BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UsersPresenceHandlerV2BadRequest) ToJSONString() string {
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

func (o *UsersPresenceHandlerV2BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUsersPresenceHandlerV2Unauthorized creates a UsersPresenceHandlerV2Unauthorized with default headers values
func NewUsersPresenceHandlerV2Unauthorized() *UsersPresenceHandlerV2Unauthorized {
	return &UsersPresenceHandlerV2Unauthorized{}
}

/*UsersPresenceHandlerV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UsersPresenceHandlerV2Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UsersPresenceHandlerV2Unauthorized) ToJSONString() string {
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

func (o *UsersPresenceHandlerV2Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUsersPresenceHandlerV2InternalServerError creates a UsersPresenceHandlerV2InternalServerError with default headers values
func NewUsersPresenceHandlerV2InternalServerError() *UsersPresenceHandlerV2InternalServerError {
	return &UsersPresenceHandlerV2InternalServerError{}
}

/*UsersPresenceHandlerV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UsersPresenceHandlerV2InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UsersPresenceHandlerV2InternalServerError) ToJSONString() string {
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

func (o *UsersPresenceHandlerV2InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
