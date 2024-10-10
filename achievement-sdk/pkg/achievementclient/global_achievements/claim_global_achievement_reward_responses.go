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

// ClaimGlobalAchievementRewardReader is a Reader for the ClaimGlobalAchievementReward structure.
type ClaimGlobalAchievementRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ClaimGlobalAchievementRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewClaimGlobalAchievementRewardAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewClaimGlobalAchievementRewardBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewClaimGlobalAchievementRewardUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewClaimGlobalAchievementRewardInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewClaimGlobalAchievementRewardAccepted creates a ClaimGlobalAchievementRewardAccepted with default headers values
func NewClaimGlobalAchievementRewardAccepted() *ClaimGlobalAchievementRewardAccepted {
	return &ClaimGlobalAchievementRewardAccepted{}
}

/*ClaimGlobalAchievementRewardAccepted handles this case with default header values.

  Accepted
*/
type ClaimGlobalAchievementRewardAccepted struct {
}

func (o *ClaimGlobalAchievementRewardAccepted) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim][%d] claimGlobalAchievementRewardAccepted ", 202)
}

func (o *ClaimGlobalAchievementRewardAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewClaimGlobalAchievementRewardBadRequest creates a ClaimGlobalAchievementRewardBadRequest with default headers values
func NewClaimGlobalAchievementRewardBadRequest() *ClaimGlobalAchievementRewardBadRequest {
	return &ClaimGlobalAchievementRewardBadRequest{}
}

/*ClaimGlobalAchievementRewardBadRequest handles this case with default header values.

  Bad Request
*/
type ClaimGlobalAchievementRewardBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ClaimGlobalAchievementRewardBadRequest) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim][%d] claimGlobalAchievementRewardBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ClaimGlobalAchievementRewardBadRequest) ToJSONString() string {
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

func (o *ClaimGlobalAchievementRewardBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimGlobalAchievementRewardBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewClaimGlobalAchievementRewardUnauthorized creates a ClaimGlobalAchievementRewardUnauthorized with default headers values
func NewClaimGlobalAchievementRewardUnauthorized() *ClaimGlobalAchievementRewardUnauthorized {
	return &ClaimGlobalAchievementRewardUnauthorized{}
}

/*ClaimGlobalAchievementRewardUnauthorized handles this case with default header values.

  Unauthorized
*/
type ClaimGlobalAchievementRewardUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ClaimGlobalAchievementRewardUnauthorized) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim][%d] claimGlobalAchievementRewardUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ClaimGlobalAchievementRewardUnauthorized) ToJSONString() string {
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

func (o *ClaimGlobalAchievementRewardUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimGlobalAchievementRewardUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewClaimGlobalAchievementRewardInternalServerError creates a ClaimGlobalAchievementRewardInternalServerError with default headers values
func NewClaimGlobalAchievementRewardInternalServerError() *ClaimGlobalAchievementRewardInternalServerError {
	return &ClaimGlobalAchievementRewardInternalServerError{}
}

/*ClaimGlobalAchievementRewardInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ClaimGlobalAchievementRewardInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ClaimGlobalAchievementRewardInternalServerError) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim][%d] claimGlobalAchievementRewardInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ClaimGlobalAchievementRewardInternalServerError) ToJSONString() string {
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

func (o *ClaimGlobalAchievementRewardInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ClaimGlobalAchievementRewardInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
