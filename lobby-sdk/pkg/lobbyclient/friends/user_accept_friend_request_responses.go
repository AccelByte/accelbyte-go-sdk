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

// UserAcceptFriendRequestReader is a Reader for the UserAcceptFriendRequest structure.
type UserAcceptFriendRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserAcceptFriendRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUserAcceptFriendRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserAcceptFriendRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserAcceptFriendRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserAcceptFriendRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUserAcceptFriendRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserAcceptFriendRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/me/request/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserAcceptFriendRequestNoContent creates a UserAcceptFriendRequestNoContent with default headers values
func NewUserAcceptFriendRequestNoContent() *UserAcceptFriendRequestNoContent {
	return &UserAcceptFriendRequestNoContent{}
}

/*UserAcceptFriendRequestNoContent handles this case with default header values.

  No Content
*/
type UserAcceptFriendRequestNoContent struct {
}

func (o *UserAcceptFriendRequestNoContent) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestNoContent ", 204)
}

func (o *UserAcceptFriendRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUserAcceptFriendRequestBadRequest creates a UserAcceptFriendRequestBadRequest with default headers values
func NewUserAcceptFriendRequestBadRequest() *UserAcceptFriendRequestBadRequest {
	return &UserAcceptFriendRequestBadRequest{}
}

/*UserAcceptFriendRequestBadRequest handles this case with default header values.

  Bad Request
*/
type UserAcceptFriendRequestBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserAcceptFriendRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserAcceptFriendRequestBadRequest) ToJSONString() string {
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

func (o *UserAcceptFriendRequestBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserAcceptFriendRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUserAcceptFriendRequestUnauthorized creates a UserAcceptFriendRequestUnauthorized with default headers values
func NewUserAcceptFriendRequestUnauthorized() *UserAcceptFriendRequestUnauthorized {
	return &UserAcceptFriendRequestUnauthorized{}
}

/*UserAcceptFriendRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserAcceptFriendRequestUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserAcceptFriendRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UserAcceptFriendRequestUnauthorized) ToJSONString() string {
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

func (o *UserAcceptFriendRequestUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserAcceptFriendRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUserAcceptFriendRequestForbidden creates a UserAcceptFriendRequestForbidden with default headers values
func NewUserAcceptFriendRequestForbidden() *UserAcceptFriendRequestForbidden {
	return &UserAcceptFriendRequestForbidden{}
}

/*UserAcceptFriendRequestForbidden handles this case with default header values.

  Forbidden
*/
type UserAcceptFriendRequestForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserAcceptFriendRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *UserAcceptFriendRequestForbidden) ToJSONString() string {
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

func (o *UserAcceptFriendRequestForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserAcceptFriendRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUserAcceptFriendRequestNotFound creates a UserAcceptFriendRequestNotFound with default headers values
func NewUserAcceptFriendRequestNotFound() *UserAcceptFriendRequestNotFound {
	return &UserAcceptFriendRequestNotFound{}
}

/*UserAcceptFriendRequestNotFound handles this case with default header values.

  Not Found
*/
type UserAcceptFriendRequestNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserAcceptFriendRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *UserAcceptFriendRequestNotFound) ToJSONString() string {
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

func (o *UserAcceptFriendRequestNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserAcceptFriendRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUserAcceptFriendRequestInternalServerError creates a UserAcceptFriendRequestInternalServerError with default headers values
func NewUserAcceptFriendRequestInternalServerError() *UserAcceptFriendRequestInternalServerError {
	return &UserAcceptFriendRequestInternalServerError{}
}

/*UserAcceptFriendRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserAcceptFriendRequestInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserAcceptFriendRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/accept][%d] userAcceptFriendRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserAcceptFriendRequestInternalServerError) ToJSONString() string {
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

func (o *UserAcceptFriendRequestInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserAcceptFriendRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
