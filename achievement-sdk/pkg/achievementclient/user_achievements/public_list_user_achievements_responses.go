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

// PublicListUserAchievementsReader is a Reader for the PublicListUserAchievements structure.
type PublicListUserAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListUserAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListUserAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListUserAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListUserAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListUserAchievementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListUserAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListUserAchievementsOK creates a PublicListUserAchievementsOK with default headers values
func NewPublicListUserAchievementsOK() *PublicListUserAchievementsOK {
	return &PublicListUserAchievementsOK{}
}

/*PublicListUserAchievementsOK handles this case with default header values.

  OK
*/
type PublicListUserAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedUserAchievementResponse
}

func (o *PublicListUserAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements][%d] publicListUserAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListUserAchievementsOK) ToJSONString() string {
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

func (o *PublicListUserAchievementsOK) GetPayload() *achievementclientmodels.ModelsPaginatedUserAchievementResponse {
	return o.Payload
}

func (o *PublicListUserAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedUserAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListUserAchievementsBadRequest creates a PublicListUserAchievementsBadRequest with default headers values
func NewPublicListUserAchievementsBadRequest() *PublicListUserAchievementsBadRequest {
	return &PublicListUserAchievementsBadRequest{}
}

/*PublicListUserAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListUserAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListUserAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements][%d] publicListUserAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListUserAchievementsBadRequest) ToJSONString() string {
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

func (o *PublicListUserAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListUserAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAchievementsUnauthorized creates a PublicListUserAchievementsUnauthorized with default headers values
func NewPublicListUserAchievementsUnauthorized() *PublicListUserAchievementsUnauthorized {
	return &PublicListUserAchievementsUnauthorized{}
}

/*PublicListUserAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicListUserAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListUserAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements][%d] publicListUserAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListUserAchievementsUnauthorized) ToJSONString() string {
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

func (o *PublicListUserAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListUserAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAchievementsNotFound creates a PublicListUserAchievementsNotFound with default headers values
func NewPublicListUserAchievementsNotFound() *PublicListUserAchievementsNotFound {
	return &PublicListUserAchievementsNotFound{}
}

/*PublicListUserAchievementsNotFound handles this case with default header values.

  Not Found
*/
type PublicListUserAchievementsNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListUserAchievementsNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements][%d] publicListUserAchievementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListUserAchievementsNotFound) ToJSONString() string {
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

func (o *PublicListUserAchievementsNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListUserAchievementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAchievementsInternalServerError creates a PublicListUserAchievementsInternalServerError with default headers values
func NewPublicListUserAchievementsInternalServerError() *PublicListUserAchievementsInternalServerError {
	return &PublicListUserAchievementsInternalServerError{}
}

/*PublicListUserAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListUserAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListUserAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements][%d] publicListUserAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListUserAchievementsInternalServerError) ToJSONString() string {
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

func (o *PublicListUserAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListUserAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
