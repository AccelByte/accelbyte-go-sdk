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

// AdminBatchQueryUserAchievementsReader is a Reader for the AdminBatchQueryUserAchievements structure.
type AdminBatchQueryUserAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBatchQueryUserAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBatchQueryUserAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBatchQueryUserAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBatchQueryUserAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/batchQuery returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBatchQueryUserAchievementsOK creates a AdminBatchQueryUserAchievementsOK with default headers values
func NewAdminBatchQueryUserAchievementsOK() *AdminBatchQueryUserAchievementsOK {
	return &AdminBatchQueryUserAchievementsOK{}
}

/*AdminBatchQueryUserAchievementsOK handles this case with default header values.

  OK
*/
type AdminBatchQueryUserAchievementsOK struct {
	Payload []*achievementclientmodels.ModelsUserAchievementResponse
}

func (o *AdminBatchQueryUserAchievementsOK) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/batchQuery][%d] adminBatchQueryUserAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminBatchQueryUserAchievementsOK) ToJSONString() string {
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

func (o *AdminBatchQueryUserAchievementsOK) GetPayload() []*achievementclientmodels.ModelsUserAchievementResponse {
	return o.Payload
}

func (o *AdminBatchQueryUserAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBatchQueryUserAchievementsBadRequest creates a AdminBatchQueryUserAchievementsBadRequest with default headers values
func NewAdminBatchQueryUserAchievementsBadRequest() *AdminBatchQueryUserAchievementsBadRequest {
	return &AdminBatchQueryUserAchievementsBadRequest{}
}

/*AdminBatchQueryUserAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminBatchQueryUserAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBatchQueryUserAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/batchQuery][%d] adminBatchQueryUserAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBatchQueryUserAchievementsBadRequest) ToJSONString() string {
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

func (o *AdminBatchQueryUserAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBatchQueryUserAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBatchQueryUserAchievementsUnauthorized creates a AdminBatchQueryUserAchievementsUnauthorized with default headers values
func NewAdminBatchQueryUserAchievementsUnauthorized() *AdminBatchQueryUserAchievementsUnauthorized {
	return &AdminBatchQueryUserAchievementsUnauthorized{}
}

/*AdminBatchQueryUserAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBatchQueryUserAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminBatchQueryUserAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/batchQuery][%d] adminBatchQueryUserAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBatchQueryUserAchievementsUnauthorized) ToJSONString() string {
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

func (o *AdminBatchQueryUserAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminBatchQueryUserAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
