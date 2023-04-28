// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievement_platform

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// UnlockSteamUserAchievementReader is a Reader for the UnlockSteamUserAchievement structure.
type UnlockSteamUserAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnlockSteamUserAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnlockSteamUserAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUnlockSteamUserAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnlockSteamUserAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnlockSteamUserAchievementNoContent creates a UnlockSteamUserAchievementNoContent with default headers values
func NewUnlockSteamUserAchievementNoContent() *UnlockSteamUserAchievementNoContent {
	return &UnlockSteamUserAchievementNoContent{}
}

/*UnlockSteamUserAchievementNoContent handles this case with default header values.

  No Content
*/
type UnlockSteamUserAchievementNoContent struct {
}

func (o *UnlockSteamUserAchievementNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam][%d] unlockSteamUserAchievementNoContent ", 204)
}

func (o *UnlockSteamUserAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnlockSteamUserAchievementBadRequest creates a UnlockSteamUserAchievementBadRequest with default headers values
func NewUnlockSteamUserAchievementBadRequest() *UnlockSteamUserAchievementBadRequest {
	return &UnlockSteamUserAchievementBadRequest{}
}

/*UnlockSteamUserAchievementBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UnlockSteamUserAchievementBadRequest struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UnlockSteamUserAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam][%d] unlockSteamUserAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UnlockSteamUserAchievementBadRequest) ToJSONString() string {
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

func (o *UnlockSteamUserAchievementBadRequest) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UnlockSteamUserAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUnlockSteamUserAchievementNotFound creates a UnlockSteamUserAchievementNotFound with default headers values
func NewUnlockSteamUserAchievementNotFound() *UnlockSteamUserAchievementNotFound {
	return &UnlockSteamUserAchievementNotFound{}
}

/*UnlockSteamUserAchievementNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39244</td><td>Steam config does not exist</td></tr><tr><td>39245</td><td>Steam app id does not exist</td></tr></table>
*/
type UnlockSteamUserAchievementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UnlockSteamUserAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam][%d] unlockSteamUserAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnlockSteamUserAchievementNotFound) ToJSONString() string {
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

func (o *UnlockSteamUserAchievementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnlockSteamUserAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
