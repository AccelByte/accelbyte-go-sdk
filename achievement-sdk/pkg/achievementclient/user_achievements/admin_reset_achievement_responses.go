// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_achievements

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// AdminResetAchievementReader is a Reader for the AdminResetAchievement structure.
type AdminResetAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminResetAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminResetAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminResetAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetAchievementNoContent creates a AdminResetAchievementNoContent with default headers values
func NewAdminResetAchievementNoContent() *AdminResetAchievementNoContent {
	return &AdminResetAchievementNoContent{}
}

/*AdminResetAchievementNoContent handles this case with default header values.

  No Content
*/
type AdminResetAchievementNoContent struct {
}

func (o *AdminResetAchievementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset][%d] adminResetAchievementNoContent ", 204)
}

func (o *AdminResetAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetAchievementBadRequest creates a AdminResetAchievementBadRequest with default headers values
func NewAdminResetAchievementBadRequest() *AdminResetAchievementBadRequest {
	return &AdminResetAchievementBadRequest{}
}

/*AdminResetAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminResetAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminResetAchievementBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset][%d] adminResetAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminResetAchievementBadRequest) ToJSONString() string {
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

func (o *AdminResetAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminResetAchievementUnauthorized creates a AdminResetAchievementUnauthorized with default headers values
func NewAdminResetAchievementUnauthorized() *AdminResetAchievementUnauthorized {
	return &AdminResetAchievementUnauthorized{}
}

/*AdminResetAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminResetAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminResetAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset][%d] adminResetAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminResetAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminResetAchievementNotFound creates a AdminResetAchievementNotFound with default headers values
func NewAdminResetAchievementNotFound() *AdminResetAchievementNotFound {
	return &AdminResetAchievementNotFound{}
}

/*AdminResetAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminResetAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminResetAchievementNotFound) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset][%d] adminResetAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminResetAchievementNotFound) ToJSONString() string {
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

func (o *AdminResetAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminResetAchievementInternalServerError creates a AdminResetAchievementInternalServerError with default headers values
func NewAdminResetAchievementInternalServerError() *AdminResetAchievementInternalServerError {
	return &AdminResetAchievementInternalServerError{}
}

/*AdminResetAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminResetAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminResetAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset][%d] adminResetAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminResetAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminResetAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
