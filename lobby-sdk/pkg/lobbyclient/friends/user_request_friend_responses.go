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

// UserRequestFriendReader is a Reader for the UserRequestFriend structure.
type UserRequestFriendReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserRequestFriendReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewUserRequestFriendCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserRequestFriendBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserRequestFriendUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserRequestFriendForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUserRequestFriendNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUserRequestFriendUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserRequestFriendInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/me/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserRequestFriendCreated creates a UserRequestFriendCreated with default headers values
func NewUserRequestFriendCreated() *UserRequestFriendCreated {
	return &UserRequestFriendCreated{}
}

/*UserRequestFriendCreated handles this case with default header values.

  Created
*/
type UserRequestFriendCreated struct {
}

func (o *UserRequestFriendCreated) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendCreated ", 201)
}

func (o *UserRequestFriendCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUserRequestFriendBadRequest creates a UserRequestFriendBadRequest with default headers values
func NewUserRequestFriendBadRequest() *UserRequestFriendBadRequest {
	return &UserRequestFriendBadRequest{}
}

/*UserRequestFriendBadRequest handles this case with default header values.

  Bad Request
*/
type UserRequestFriendBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserRequestFriendBadRequest) ToJSONString() string {
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

func (o *UserRequestFriendBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRequestFriendUnauthorized creates a UserRequestFriendUnauthorized with default headers values
func NewUserRequestFriendUnauthorized() *UserRequestFriendUnauthorized {
	return &UserRequestFriendUnauthorized{}
}

/*UserRequestFriendUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserRequestFriendUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UserRequestFriendUnauthorized) ToJSONString() string {
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

func (o *UserRequestFriendUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRequestFriendForbidden creates a UserRequestFriendForbidden with default headers values
func NewUserRequestFriendForbidden() *UserRequestFriendForbidden {
	return &UserRequestFriendForbidden{}
}

/*UserRequestFriendForbidden handles this case with default header values.

  Forbidden
*/
type UserRequestFriendForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendForbidden  %+v", 403, o.ToJSONString())
}

func (o *UserRequestFriendForbidden) ToJSONString() string {
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

func (o *UserRequestFriendForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRequestFriendNotFound creates a UserRequestFriendNotFound with default headers values
func NewUserRequestFriendNotFound() *UserRequestFriendNotFound {
	return &UserRequestFriendNotFound{}
}

/*UserRequestFriendNotFound handles this case with default header values.

  Not Found
*/
type UserRequestFriendNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendNotFound) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendNotFound  %+v", 404, o.ToJSONString())
}

func (o *UserRequestFriendNotFound) ToJSONString() string {
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

func (o *UserRequestFriendNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRequestFriendUnprocessableEntity creates a UserRequestFriendUnprocessableEntity with default headers values
func NewUserRequestFriendUnprocessableEntity() *UserRequestFriendUnprocessableEntity {
	return &UserRequestFriendUnprocessableEntity{}
}

/*UserRequestFriendUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type UserRequestFriendUnprocessableEntity struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UserRequestFriendUnprocessableEntity) ToJSONString() string {
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

func (o *UserRequestFriendUnprocessableEntity) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRequestFriendInternalServerError creates a UserRequestFriendInternalServerError with default headers values
func NewUserRequestFriendInternalServerError() *UserRequestFriendInternalServerError {
	return &UserRequestFriendInternalServerError{}
}

/*UserRequestFriendInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserRequestFriendInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRequestFriendInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request][%d] userRequestFriendInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserRequestFriendInternalServerError) ToJSONString() string {
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

func (o *UserRequestFriendInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRequestFriendInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
