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

// AdminListGlobalAchievementsReader is a Reader for the AdminListGlobalAchievements structure.
type AdminListGlobalAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListGlobalAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListGlobalAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListGlobalAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListGlobalAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListGlobalAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/global/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListGlobalAchievementsOK creates a AdminListGlobalAchievementsOK with default headers values
func NewAdminListGlobalAchievementsOK() *AdminListGlobalAchievementsOK {
	return &AdminListGlobalAchievementsOK{}
}

/*AdminListGlobalAchievementsOK handles this case with default header values.

  OK
*/
type AdminListGlobalAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedGlobalAchievementResponse
}

func (o *AdminListGlobalAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements][%d] adminListGlobalAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListGlobalAchievementsOK) ToJSONString() string {
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

func (o *AdminListGlobalAchievementsOK) GetPayload() *achievementclientmodels.ModelsPaginatedGlobalAchievementResponse {
	return o.Payload
}

func (o *AdminListGlobalAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListGlobalAchievementsBadRequest creates a AdminListGlobalAchievementsBadRequest with default headers values
func NewAdminListGlobalAchievementsBadRequest() *AdminListGlobalAchievementsBadRequest {
	return &AdminListGlobalAchievementsBadRequest{}
}

/*AdminListGlobalAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListGlobalAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements][%d] adminListGlobalAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListGlobalAchievementsBadRequest) ToJSONString() string {
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

func (o *AdminListGlobalAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListGlobalAchievementsUnauthorized creates a AdminListGlobalAchievementsUnauthorized with default headers values
func NewAdminListGlobalAchievementsUnauthorized() *AdminListGlobalAchievementsUnauthorized {
	return &AdminListGlobalAchievementsUnauthorized{}
}

/*AdminListGlobalAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListGlobalAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements][%d] adminListGlobalAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListGlobalAchievementsUnauthorized) ToJSONString() string {
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

func (o *AdminListGlobalAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListGlobalAchievementsInternalServerError creates a AdminListGlobalAchievementsInternalServerError with default headers values
func NewAdminListGlobalAchievementsInternalServerError() *AdminListGlobalAchievementsInternalServerError {
	return &AdminListGlobalAchievementsInternalServerError{}
}

/*AdminListGlobalAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListGlobalAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements][%d] adminListGlobalAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListGlobalAchievementsInternalServerError) ToJSONString() string {
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

func (o *AdminListGlobalAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
