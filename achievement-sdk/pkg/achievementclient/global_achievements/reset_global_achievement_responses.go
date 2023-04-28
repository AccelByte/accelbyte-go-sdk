// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_achievements

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

// ResetGlobalAchievementReader is a Reader for the ResetGlobalAchievement structure.
type ResetGlobalAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetGlobalAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewResetGlobalAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewResetGlobalAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewResetGlobalAchievementForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewResetGlobalAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetGlobalAchievementNoContent creates a ResetGlobalAchievementNoContent with default headers values
func NewResetGlobalAchievementNoContent() *ResetGlobalAchievementNoContent {
	return &ResetGlobalAchievementNoContent{}
}

/*ResetGlobalAchievementNoContent handles this case with default header values.

  No Content
*/
type ResetGlobalAchievementNoContent struct {
}

func (o *ResetGlobalAchievementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset][%d] resetGlobalAchievementNoContent ", 204)
}

func (o *ResetGlobalAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetGlobalAchievementUnauthorized creates a ResetGlobalAchievementUnauthorized with default headers values
func NewResetGlobalAchievementUnauthorized() *ResetGlobalAchievementUnauthorized {
	return &ResetGlobalAchievementUnauthorized{}
}

/*ResetGlobalAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type ResetGlobalAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ResetGlobalAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset][%d] resetGlobalAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ResetGlobalAchievementUnauthorized) ToJSONString() string {
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

func (o *ResetGlobalAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ResetGlobalAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewResetGlobalAchievementForbidden creates a ResetGlobalAchievementForbidden with default headers values
func NewResetGlobalAchievementForbidden() *ResetGlobalAchievementForbidden {
	return &ResetGlobalAchievementForbidden{}
}

/*ResetGlobalAchievementForbidden handles this case with default header values.

  Forbidden
*/
type ResetGlobalAchievementForbidden struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ResetGlobalAchievementForbidden) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset][%d] resetGlobalAchievementForbidden  %+v", 403, o.ToJSONString())
}

func (o *ResetGlobalAchievementForbidden) ToJSONString() string {
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

func (o *ResetGlobalAchievementForbidden) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ResetGlobalAchievementForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewResetGlobalAchievementInternalServerError creates a ResetGlobalAchievementInternalServerError with default headers values
func NewResetGlobalAchievementInternalServerError() *ResetGlobalAchievementInternalServerError {
	return &ResetGlobalAchievementInternalServerError{}
}

/*ResetGlobalAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ResetGlobalAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ResetGlobalAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset][%d] resetGlobalAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ResetGlobalAchievementInternalServerError) ToJSONString() string {
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

func (o *ResetGlobalAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ResetGlobalAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
