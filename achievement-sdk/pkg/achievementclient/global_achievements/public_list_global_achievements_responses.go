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

// PublicListGlobalAchievementsReader is a Reader for the PublicListGlobalAchievements structure.
type PublicListGlobalAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListGlobalAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListGlobalAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListGlobalAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListGlobalAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListGlobalAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/global/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListGlobalAchievementsOK creates a PublicListGlobalAchievementsOK with default headers values
func NewPublicListGlobalAchievementsOK() *PublicListGlobalAchievementsOK {
	return &PublicListGlobalAchievementsOK{}
}

/*PublicListGlobalAchievementsOK handles this case with default header values.

  OK
*/
type PublicListGlobalAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedGlobalAchievementResponse
}

func (o *PublicListGlobalAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements][%d] publicListGlobalAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListGlobalAchievementsOK) ToJSONString() string {
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

func (o *PublicListGlobalAchievementsOK) GetPayload() *achievementclientmodels.ModelsPaginatedGlobalAchievementResponse {
	return o.Payload
}

func (o *PublicListGlobalAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedGlobalAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListGlobalAchievementsBadRequest creates a PublicListGlobalAchievementsBadRequest with default headers values
func NewPublicListGlobalAchievementsBadRequest() *PublicListGlobalAchievementsBadRequest {
	return &PublicListGlobalAchievementsBadRequest{}
}

/*PublicListGlobalAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListGlobalAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListGlobalAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements][%d] publicListGlobalAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListGlobalAchievementsBadRequest) ToJSONString() string {
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

func (o *PublicListGlobalAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListGlobalAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListGlobalAchievementsUnauthorized creates a PublicListGlobalAchievementsUnauthorized with default headers values
func NewPublicListGlobalAchievementsUnauthorized() *PublicListGlobalAchievementsUnauthorized {
	return &PublicListGlobalAchievementsUnauthorized{}
}

/*PublicListGlobalAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicListGlobalAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListGlobalAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements][%d] publicListGlobalAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListGlobalAchievementsUnauthorized) ToJSONString() string {
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

func (o *PublicListGlobalAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListGlobalAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListGlobalAchievementsInternalServerError creates a PublicListGlobalAchievementsInternalServerError with default headers values
func NewPublicListGlobalAchievementsInternalServerError() *PublicListGlobalAchievementsInternalServerError {
	return &PublicListGlobalAchievementsInternalServerError{}
}

/*PublicListGlobalAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListGlobalAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListGlobalAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements][%d] publicListGlobalAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListGlobalAchievementsInternalServerError) ToJSONString() string {
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

func (o *PublicListGlobalAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListGlobalAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
