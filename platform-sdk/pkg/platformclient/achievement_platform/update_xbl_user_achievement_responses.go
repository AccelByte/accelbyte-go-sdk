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

// UpdateXblUserAchievementReader is a Reader for the UpdateXblUserAchievement structure.
type UpdateXblUserAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateXblUserAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateXblUserAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateXblUserAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateXblUserAchievementNoContent creates a UpdateXblUserAchievementNoContent with default headers values
func NewUpdateXblUserAchievementNoContent() *UpdateXblUserAchievementNoContent {
	return &UpdateXblUserAchievementNoContent{}
}

/*UpdateXblUserAchievementNoContent handles this case with default header values.

  No Content
*/
type UpdateXblUserAchievementNoContent struct {
}

func (o *UpdateXblUserAchievementNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl][%d] updateXblUserAchievementNoContent ", 204)
}

func (o *UpdateXblUserAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateXblUserAchievementBadRequest creates a UpdateXblUserAchievementBadRequest with default headers values
func NewUpdateXblUserAchievementBadRequest() *UpdateXblUserAchievementBadRequest {
	return &UpdateXblUserAchievementBadRequest{}
}

/*UpdateXblUserAchievementBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateXblUserAchievementBadRequest struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateXblUserAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl][%d] updateXblUserAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateXblUserAchievementBadRequest) ToJSONString() string {
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

func (o *UpdateXblUserAchievementBadRequest) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateXblUserAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
