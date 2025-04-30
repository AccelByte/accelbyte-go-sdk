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

// PublicBulkUnlockAchievementReader is a Reader for the PublicBulkUnlockAchievement structure.
type PublicBulkUnlockAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkUnlockAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkUnlockAchievementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkUnlockAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBulkUnlockAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicBulkUnlockAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkUnlockAchievementUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBulkUnlockAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkUnlockAchievementOK creates a PublicBulkUnlockAchievementOK with default headers values
func NewPublicBulkUnlockAchievementOK() *PublicBulkUnlockAchievementOK {
	return &PublicBulkUnlockAchievementOK{}
}

/*PublicBulkUnlockAchievementOK handles this case with default header values.

  OK
*/
type PublicBulkUnlockAchievementOK struct {
	Payload []*achievementclientmodels.ModelsBulkUnlockAchievementResponse
}

func (o *PublicBulkUnlockAchievementOK) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementOK) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementOK) GetPayload() []*achievementclientmodels.ModelsBulkUnlockAchievementResponse {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkUnlockAchievementBadRequest creates a PublicBulkUnlockAchievementBadRequest with default headers values
func NewPublicBulkUnlockAchievementBadRequest() *PublicBulkUnlockAchievementBadRequest {
	return &PublicBulkUnlockAchievementBadRequest{}
}

/*PublicBulkUnlockAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type PublicBulkUnlockAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicBulkUnlockAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementBadRequest) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkUnlockAchievementUnauthorized creates a PublicBulkUnlockAchievementUnauthorized with default headers values
func NewPublicBulkUnlockAchievementUnauthorized() *PublicBulkUnlockAchievementUnauthorized {
	return &PublicBulkUnlockAchievementUnauthorized{}
}

/*PublicBulkUnlockAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicBulkUnlockAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicBulkUnlockAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementUnauthorized) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkUnlockAchievementNotFound creates a PublicBulkUnlockAchievementNotFound with default headers values
func NewPublicBulkUnlockAchievementNotFound() *PublicBulkUnlockAchievementNotFound {
	return &PublicBulkUnlockAchievementNotFound{}
}

/*PublicBulkUnlockAchievementNotFound handles this case with default header values.

  Not Found
*/
type PublicBulkUnlockAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicBulkUnlockAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementNotFound) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkUnlockAchievementUnprocessableEntity creates a PublicBulkUnlockAchievementUnprocessableEntity with default headers values
func NewPublicBulkUnlockAchievementUnprocessableEntity() *PublicBulkUnlockAchievementUnprocessableEntity {
	return &PublicBulkUnlockAchievementUnprocessableEntity{}
}

/*PublicBulkUnlockAchievementUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type PublicBulkUnlockAchievementUnprocessableEntity struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicBulkUnlockAchievementUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementUnprocessableEntity) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementUnprocessableEntity) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkUnlockAchievementInternalServerError creates a PublicBulkUnlockAchievementInternalServerError with default headers values
func NewPublicBulkUnlockAchievementInternalServerError() *PublicBulkUnlockAchievementInternalServerError {
	return &PublicBulkUnlockAchievementInternalServerError{}
}

/*PublicBulkUnlockAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicBulkUnlockAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicBulkUnlockAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/bulkUnlock][%d] publicBulkUnlockAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBulkUnlockAchievementInternalServerError) ToJSONString() string {
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

func (o *PublicBulkUnlockAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicBulkUnlockAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
